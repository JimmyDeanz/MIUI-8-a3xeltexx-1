.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.super Ljava/lang/Thread;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_DETECTION_FAILED:I = -0x2

.field private static final AUTHENTICATION_IN_PROGRESS_FROM_RESPONSE:I = 0x0

.field private static final AUTHENTICATION_IN_PROGRESS_FROM_STATE:I = 0x2

.field private static final AUTHENTICATION_NOT_REQUIRED:I = -0x1

.field private static final AUTHENTICATION_REQUIRED_ADD:I = 0x1

.field private static final BUNDLE_ENTRY_BASE64_ENCODE:Ljava/lang/String; = "base64credentials"

.field private static final BUNDLE_ENTRY_PASSWORD:Ljava/lang/String; = "password"

.field private static final BUNDLE_ENTRY_USERNAME:Ljava/lang/String; = "username"

.field private static final CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final DBG:Z

.field private static final ERROR_BACK_CODE:I = -0x3

.field private static final ERROR_CANCEL_CODE:I = -0x2

.field private static final ERROR_INVALID_CRED_CODE:I = -0x4

.field private static final ERROR_RETURN_CODE:I = -0x1

.field private static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field private static final HEADER_PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final HTTP_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "HTTP/1.1 500 Internal Server Error\r\n"

.field private static final HTTP_OK:Ljava/lang/String; = "HTTP/1.1 200 OK\n"

.field private static final INVALID_FD:I = -0x1

.field private static final NO_ERROR:I = 0x0

.field private static final PROXY:Ljava/lang/String; = "PROXY "

.field private static final PROXY_AUTHENTICATION_ACTION:Ljava/lang/String; = "vpn.knoxvpn.proxy-authentication-action"

.field private static final PROXY_AUTHENTICATION_RESULT:Ljava/lang/String; = "vpn.knoxvpn.proxy-authentication-result"

.field private static final SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final TAG:Ljava/lang/String; = "KnoxVpnProxyServer"


# instance fields
.field private CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

.field private USER_PROXY_CREDENTIAL:Ljava/lang/String;

.field private authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;",
            ">;"
        }
    .end annotation
.end field

.field private credentialSyncObject:Ljava/lang/Object;

.field private isCredentialsPredefined:Z

.field private mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

.field private mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRunning:Z

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

.field private stateSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 95
    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mPort:I

    .line 97
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 98
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    .line 99
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 100
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 101
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    .line 102
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 103
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 104
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 105
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 106
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    .line 107
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 109
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isCredentialsPredefined:Z

    .line 113
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    .line 114
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    .line 158
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    .line 159
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    .line 160
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    .line 161
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    .line 162
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    .line 163
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 164
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->initializeHandlerThread()V

    .line 165
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 166
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 168
    .local v0, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isproxyCredentialsPreDefined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->processPredefinedCredentials(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    .line 171
    :cond_0
    return-void
.end method

.method private _getRequiredAuthenticationType(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 370
    .local v2, "returnValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 372
    .local v0, "authenticationRequired":Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 373
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: read line = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    .line 375
    const-string v3, "Proxy-Authenticate:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 377
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: ProxyAuth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "HTTP/1."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    const-string v4, "407"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 382
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: authentication retuired = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 385
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In _getRequiredAuthenticationType: out of loop. retValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-object v2
.end method

.method private _onCredentialReceived(Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .prologue
    .line 1103
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1104
    .local v8, "action":Ljava/lang/String;
    const-string v2, "PROFILE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1105
    .local v13, "profile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1226
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1108
    :cond_1
    const-string v2, "RETURN_BUNDLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 1109
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v2, "RESULT"

    const/4 v3, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1110
    .local v14, "resultCode":I
    const-string v2, "THREAD_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1112
    .local v5, "threadId":Ljava/lang/String;
    const-string/jumbo v2, "vpn.knoxvpn.proxy-authentication-result"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 1117
    :pswitch_1
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Cancel error received from the UIDialog. Breaking and aborting all threads."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto :goto_0

    .line 1125
    :pswitch_2
    if-nez p2, :cond_2

    .line 1128
    :cond_2
    if-nez v9, :cond_3

    .line 1129
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ", received bundle null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1132
    :cond_3
    const-string/jumbo v2, "username"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1133
    .local v19, "username":Ljava/lang/String;
    const-string/jumbo v2, "password"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1134
    .local v12, "password":Ljava/lang/String;
    const-string v2, "base64credentials"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1136
    .local v4, "base64Credential":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 1137
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ". Invalid/null threadId"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1139
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto :goto_0

    .line 1142
    :cond_4
    if-eqz v19, :cond_5

    if-eqz v12, :cond_5

    if-nez v4, :cond_6

    .line 1144
    :cond_5
    :try_start_0
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "callback due to null username/password/base64"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    if-eqz p2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    :cond_6
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    .line 1151
    .local v17, "stateCache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    if-nez v17, :cond_9

    .line 1152
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stateCache == null for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :try_start_1
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authentication return for threadID:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " since cache is null"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1159
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    .line 1160
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v16

    .line 1161
    .local v16, "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1162
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1164
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1146
    .end local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .end local v17    # "stateCache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :catch_0
    move-exception v10

    .line 1147
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Remote exception occured during callback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1156
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v17    # "stateCache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :catch_1
    move-exception v10

    .line 1157
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Remote exception occured during callback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1168
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_9
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ": Verifying again if credentials are correct..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v2, 0x2

    :try_start_2
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getUrlStringForAuth()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    const/4 v2, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHttpVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    .line 1171
    .local v18, "urlInfo":[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v2, :cond_b

    .line 1173
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "In _onCredentialReceived: mAuthenticator = null. Aborting this thread."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    const-string v3, "HTTP/1.1 500 Internal Server Error\r\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 1175
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1176
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1194
    .end local v18    # "urlInfo":[Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1195
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Remote exception occured during callback"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_3
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, ": Re-Verification success."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->start()V

    .line 1217
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    .line 1218
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1219
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 1220
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuthenticationState.AUTHORIZED? =  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1181
    .restart local v18    # "urlInfo":[Ljava/lang/String;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v2, v4, v3, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1182
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-authentication failed for threadID:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ". Restarting UI activity with callback"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Resetting connection to server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v15

    .line 1185
    .local v15, "server":Ljava/net/Socket;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1186
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->setDestinationSocket(Ljava/net/Socket;)V

    .line 1187
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketException in _onCredentialReceived. Server = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_c
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onFail(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1196
    .end local v15    # "server":Ljava/net/Socket;
    .end local v18    # "urlInfo":[Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 1197
    .local v11, "ex":Ljava/lang/Exception;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Exception occured during callback"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v16

    .line 1199
    .restart local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    if-eqz v4, :cond_e

    .line 1200
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    .line 1201
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1202
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1203
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1204
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1191
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .restart local v18    # "urlInfo":[Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "Re-authentication Success. Sending to dialog app."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-eqz p2, :cond_a

    invoke-interface/range {p2 .. p2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 1207
    .end local v18    # "urlInfo":[Ljava/lang/String;
    .restart local v11    # "ex":Ljava/lang/Exception;
    .restart local v16    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    :cond_e
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1208
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1209
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1210
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private abortAllWaitingThreads()V
    .locals 9

    .prologue
    .line 1251
    const-string v5, "KnoxVpnProxyServer"

    const-string v6, "Aborting all threads."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1254
    .local v4, "threadId":Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    .line 1255
    .local v0, "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v3

    .line 1257
    .local v3, "source":Ljava/net/Socket;
    const-string v2, "HTTP/1.1 500 Internal Server Error\r\n"

    .line 1258
    .local v2, "returnLine":Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1260
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    .end local v2    # "returnLine":Ljava/lang/String;
    .end local v3    # "source":Ljava/net/Socket;
    :cond_0
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing from cache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1262
    .end local v0    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :catch_0
    move-exception v5

    .line 1264
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing from cache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1264
    :catchall_0
    move-exception v5

    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing from cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5

    .line 1268
    .end local v4    # "threadId":Ljava/lang/Object;
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1269
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In abortAllWaitingThreads: resetting state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_2
    return-void
.end method

.method private abortRequest(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "connection"    # Ljava/net/Socket;
    .param p3, "failReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    const-string v0, "KnoxVpnProxyServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting this request due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v0, "HTTP/1.1 500 Internal Server Error\r\n"

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 611
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 612
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 613
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->generateRandomNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;
    .param p2, "x2"    # Ljava/net/Socket;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->abortRequest(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isSocketOperational(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authorizeWaitingThreads(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->_onCredentialReceived(Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->abortAllWaitingThreads()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p1, "x1"    # Ljava/net/Socket;
    .param p2, "x2"    # Ljava/net/Socket;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isAuthenticationRequired(Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private authorizeWaitingThreads(Ljava/lang/String;)V
    .locals 8
    .param p1, "cred"    # Ljava/lang/String;

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1246
    .local v7, "threadId":Ljava/lang/Object;
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->start()V

    goto :goto_0

    .line 1248
    .end local v7    # "threadId":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private closeServerSocket(Ljava/net/Socket;)V
    .locals 3
    .param p1, "serverSocket"    # Ljava/net/Socket;

    .prologue
    .line 592
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "KnoxVpnProxyServer"

    const-string v2, "Exception occured while closing the serverSocket "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateRandomNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 937
    const/4 v7, 0x0

    .line 939
    .local v7, "resolvedHostName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getMarkForInterface(Ljava/lang/String;)I

    move-result v5

    .line 940
    .local v5, "isKnoxNetId":I
    if-eqz p2, :cond_1

    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 941
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "KnoxVpnProxyServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The host name to resolve is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    new-instance v3, Landroid/system/StructAddrinfo;

    invoke-direct {v3}, Landroid/system/StructAddrinfo;-><init>()V

    .line 943
    .local v3, "hints":Landroid/system/StructAddrinfo;
    sget v9, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v9, v3, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 944
    sget v9, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v9, v3, Landroid/system/StructAddrinfo;->ai_family:I

    .line 945
    sget v9, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v9, v3, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 946
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p1, v3, v5}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v8

    .line 947
    .local v8, "socketAddresses":[Ljava/net/InetAddress;
    if-eqz v8, :cond_1

    .line 948
    move-object v1, v8

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v1, v4

    .line 949
    .local v0, "add":Ljava/net/InetAddress;
    instance-of v9, v0, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    .line 950
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 951
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "KnoxVpnProxyServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The resolved host address is a ipv4 address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "hints":Landroid/system/StructAddrinfo;
    .end local v4    # "i$":I
    .end local v5    # "isKnoxNetId":I
    .end local v6    # "len$":I
    .end local v8    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_1
    :goto_1
    return-object v7

    .line 948
    .restart local v0    # "add":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "hints":Landroid/system/StructAddrinfo;
    .restart local v4    # "i$":I
    .restart local v5    # "isKnoxNetId":I
    .restart local v6    # "len$":I
    .restart local v8    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 957
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "hints":Landroid/system/StructAddrinfo;
    .end local v4    # "i$":I
    .end local v5    # "isKnoxNetId":I
    .end local v6    # "len$":I
    .end local v8    # "socketAddresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 958
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "KnoxVpnProxyServer"

    const-string v10, "Exception occured while trying to resolve the address for the host "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 3
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestLine"    # [Ljava/lang/String;

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "authTypeCheckConnection":Ljava/net/Socket;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v1, :cond_0

    .line 423
    const-string v1, "KnoxVpnProxyServer"

    const-string v2, "In getAuthenticator: Resetting connection to server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    .line 425
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getRequiredAuthenticationType(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 430
    const/4 v0, 0x0

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object v1

    .line 427
    :catch_0
    move-exception v1

    .line 429
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 430
    const/4 v0, 0x0

    .line 431
    goto :goto_0

    .line 429
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 430
    const/4 v0, 0x0

    throw v1
.end method

.method private getConfiguredUser()I
    .locals 8

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "currentUserId":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 500
    .local v4, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v4, :cond_1

    .line 501
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v3

    .line 502
    .local v3, "set":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 503
    .local v2, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v5

    if-ltz v5, :cond_0

    .line 504
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v0

    .line 505
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startCredentialsActivity for userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v3    # "set":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;>;"
    :cond_1
    return v0
.end method

.method private getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    return-object v0
.end method

.method private getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-object v0
.end method

.method private getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
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
    .line 576
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 578
    .local v1, "byteBuffer":I
    if-gez v1, :cond_0

    .line 579
    const-string v2, ""

    .line 587
    :goto_0
    return-object v2

    .line 581
    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 582
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 584
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 585
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_0

    .line 587
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 927
    const/4 v0, -0x1

    .line 928
    .local v0, "knoxNetworkMark":I
    const-string/jumbo v1, "ipsec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    const/16 v0, 0x64

    .line 933
    :cond_0
    :goto_0
    return v0

    .line 930
    :cond_1
    const-string/jumbo v1, "tun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x65

    goto :goto_0
.end method

.method private getRequiredAuthenticationType(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 8
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 390
    const/4 v3, 0x0

    .line 391
    .local v3, "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "In getRequiredAuthenticationType"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v4, "HEAD "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    array-length v4, p2

    if-le v4, v6, :cond_1

    aget-object v4, p2, v7

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    array-length v4, p2

    if-le v4, v6, :cond_2

    aget-object v4, p2, v6

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v4, "Connection: keep-alive"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v4, "Proxy-Connection: keep-alive"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending line to determine auth type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 405
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->_getRequiredAuthenticationType(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "authType":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "Basic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "Returning authType Basic"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    .end local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-direct {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;-><init>()V

    .line 416
    .restart local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    :goto_2
    return-object v3

    .line 394
    .end local v0    # "authType":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v4, 0x0

    aget-object v4, p2, v4

    goto :goto_0

    .line 396
    :cond_2
    aget-object v4, p2, v7

    goto :goto_1

    .line 409
    .restart local v0    # "authType":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "NTLM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 410
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "Returning authType NTLM"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;

    .end local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-direct {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;-><init>()V

    .restart local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    goto :goto_2

    .line 413
    :cond_4
    const-string v4, "KnoxVpnProxyServer"

    const-string v5, "Returning authType None!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;

    .end local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    .restart local v3    # "returnValue":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    goto :goto_2
.end method

.method private getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 9
    .param p1, "resolvedHostName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 976
    const/4 v1, 0x0

    .line 978
    .local v1, "returnValue":Ljava/net/Socket;
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 979
    .end local v1    # "returnValue":Ljava/net/Socket;
    .local v2, "returnValue":Ljava/net/Socket;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2, v6}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 980
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The socket is bounded to the local address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    invoke-virtual {v2}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 982
    .local v3, "socketFd":Ljava/io/FileDescriptor;
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 983
    .local v4, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 984
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 985
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy Type: The socket is binded to the interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "for the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(ILjava/lang/String;)V

    .line 997
    if-eqz p1, :cond_5

    .line 998
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 999
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The socket is bounded to the local address 2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v1, v2

    .end local v2    # "returnValue":Ljava/net/Socket;
    .end local v3    # "socketFd":Ljava/io/FileDescriptor;
    .end local v4    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    :goto_0
    move-object v5, v1

    .line 1014
    :goto_1
    return-object v5

    .line 988
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    .restart local v3    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v4    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3
    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy Type:invalid interface name, binding to the interface failed for the profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    move-object v1, v2

    .line 990
    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_1

    .line 993
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :cond_4
    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy Type:invalid socket, binding to the interface failed for the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    move-object v1, v2

    .line 995
    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_1

    .line 1001
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :cond_5
    const-string v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dns resolution failed for the proxy server added to the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 1003
    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_1

    .line 1005
    .end local v3    # "socketFd":Ljava/io/FileDescriptor;
    .end local v4    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occured while trying to connect to the remote host for the profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1008
    const/4 v1, 0x0

    .line 1013
    goto :goto_0

    .line 1009
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured while applying the proxy type for the url for the profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    .line 1012
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1009
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_3

    .line 1005
    .end local v1    # "returnValue":Ljava/net/Socket;
    .restart local v2    # "returnValue":Ljava/net/Socket;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "returnValue":Ljava/net/Socket;
    .restart local v1    # "returnValue":Ljava/net/Socket;
    goto :goto_2
.end method

.method private getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 6
    .param p1, "server"    # Ljava/net/Socket;

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 965
    .local v2, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 966
    .local v1, "sockAddress":Ljava/net/InetSocketAddress;
    const/4 v0, 0x0

    .line 967
    .local v0, "resolvedHostName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 968
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    :cond_0
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getServerConnectedSocket: Resolved Hostname = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getServerConnectedSocket: Resolved port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    return-object v3
.end method

.method private getUserCredential()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object v0
.end method

.method private initializeHandlerThread()V
    .locals 3

    .prologue
    .line 178
    const-string v0, "KnoxVpnProxyServer"

    const-string v1, "In initializeHandlerThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProxyAuthenticationHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 180
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    .line 182
    return-void
.end method

.method private isAuthenticationRequired(Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;
    .param p4, "randomCacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 447
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 448
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Returning AUTHENTICATION_IN_PROGRESS_FROM_STATE without processing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return v2

    .line 451
    :cond_0
    const/4 v1, 0x0

    .line 452
    .local v1, "remoteAuthStatus":Z
    const/4 v0, 0x0

    .line 453
    .local v0, "credentials":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 456
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v5, :cond_1

    .line 457
    const/4 v2, -0x2

    goto :goto_0

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v5, v5, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v5, v5, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    if-eqz v5, :cond_4

    .line 462
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "*****************  Authentication type authenticator and NOT AUTHORIZED ****************"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    .line 464
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    goto :goto_0

    .line 467
    :cond_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 468
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-interface {v2, v0, p2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v1

    .line 469
    if-nez v1, :cond_6

    .line 470
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "CREDENTIAL_PRESENT_NOT_AUTHORIZED set. Resetting to AUTHORIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 474
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 476
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isCredentialsPredefined:Z

    if-eqz v2, :cond_7

    .line 477
    const-string v2, "KnoxVpnProxyServer"

    const-string v4, "Error with pre-defined credentials. Nothing to do."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 478
    goto :goto_0

    .line 480
    :cond_7
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    .line 481
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    move v2, v4

    .line 482
    goto :goto_0

    .line 485
    :cond_8
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    const/4 v5, 0x0

    invoke-interface {v2, v5, p2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v1

    .line 486
    if-nez v1, :cond_9

    .line 487
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    move v2, v3

    .line 488
    goto/16 :goto_0

    .line 490
    :cond_9
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    .line 491
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    move v2, v4

    .line 492
    goto/16 :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 436
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getConfiguredUser()I

    move-result v0

    .line 437
    .local v0, "currentUserId":I
    const/16 v5, 0x64

    if-lt v0, v5, :cond_1

    const/16 v5, 0xc8

    if-gt v0, v5, :cond_1

    .line 438
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 439
    .local v2, "pm":Landroid/os/PersonaManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 440
    .local v3, "state":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 443
    .end local v2    # "pm":Landroid/os/PersonaManager;
    .end local v3    # "state":Z
    :goto_1
    return v4

    .line 439
    .restart local v2    # "pm":Landroid/os/PersonaManager;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 442
    .end local v2    # "pm":Landroid/os/PersonaManager;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 443
    .local v1, "mKM":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    goto :goto_1
.end method

.method private isSocketOperational(Ljava/net/Socket;)Z
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 1237
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1241
    :cond_0
    :goto_0
    return v1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnProxyServer"

    const-string v3, "checkIfSocketOperational Exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processPredefinedCredentials(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .locals 6
    .param p1, "vpnEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 219
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "check proxyCredentialsPreDefined is true."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "cred":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "password":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 224
    new-instance v0, Ljava/lang/String;

    .end local v0    # "cred":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 225
    .restart local v0    # "cred":Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isCredentialsPredefined:Z

    .line 226
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    .line 228
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPredefinedCredentials : Authstate= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPredefinedCredentials : credentials= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    return-void
.end method

.method private sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 602
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 603
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 604
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 605
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 606
    return-void
.end method

.method private sendMessageToHandler(ILjava/lang/Object;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1229
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1231
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1233
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendUIIntent(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getConfiguredUser()I

    move-result v0

    .line 515
    .local v0, "currentUserId":I
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "vpn.knoxvpn.proxy-authentication-action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 518
    const-string v2, "com.android.vpndialogs"

    const-string v3, "com.android.vpndialogs.KnoxVpnProxyLoginActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v2, "THREAD_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v2, "PROFILE_NAME"

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 524
    return-void
.end method

.method private setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mPort:I

    .line 280
    return-void
.end method

.method private setUserCredential(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getNTLMType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type2Message"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, "ntlmType3String":Ljava/lang/String;
    :try_start_0
    const-string v3, "NTLM "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "updatedType2Message":[Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initial ntlm message is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-nez v3, :cond_2

    .line 548
    :cond_1
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "NTLMType2Message is not in expected format"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v3, 0x0

    .line 556
    .end local v2    # "updatedType2Message":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 551
    .restart local v2    # "updatedType2Message":[Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NTLM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "final ntlm message is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "updatedType2Message":[Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v3, v1

    .line 556
    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Exception occured while trying to get the Type3Message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mPort:I

    return v0
.end method

.method public handleScreenUnlock()V
    .locals 2

    .prologue
    .line 534
    const-string v0, "KnoxVpnProxyServer"

    const-string/jumbo v1, "handleScreenUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "KnoxVpnProxyServer"

    const-string v1, "AuthenticationState.AUTHORIZATION_IN_PROGRESS. Starting UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->generateRandomNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendUIIntent(Ljava/lang/String;)V

    .line 540
    :cond_0
    return-void
.end method

.method public onCredentialReceive(Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .prologue
    .line 560
    const-string v0, "KnoxVpnProxyServer"

    const-string v1, "In onCredentialReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-nez p1, :cond_1

    .line 564
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 565
    if-eqz p2, :cond_0

    .line 566
    invoke-interface {p2}, Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 572
    :cond_1
    const/4 v0, 0x2

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    .line 573
    return-void

    .line 569
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public restartServer()I
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stopServer()V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startServer()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 288
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v3, :cond_1

    .line 289
    iput-boolean v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 290
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-interface {v3, v4, v7, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "acceptSocket":Ljava/net/Socket;
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    if-eqz v3, :cond_3

    .line 304
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V

    .line 307
    .local v2, "parser":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 311
    .end local v2    # "parser":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured while accepting the packets from the local proxy port for the profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 295
    .end local v0    # "acceptSocket":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while trying to fetch the list of uid added to the profile during starting the local server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iput-boolean v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 298
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-interface {v3, v4, v7, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    goto :goto_0

    .line 309
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "acceptSocket":Ljava/net/Socket;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 315
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 316
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 318
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 319
    :catch_2
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Exception occured while trying to close the socket"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected declared-synchronized startCredentialsActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendUIIntent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startServer()I
    .locals 5

    .prologue
    .line 234
    monitor-enter p0

    const/4 v1, -0x1

    .line 236
    .local v1, "port":I
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 237
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 239
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The local port assigned for PAC proxy usage and for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setPort(I)V

    .line 241
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    monitor-exit p0

    return v1

    .line 244
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 245
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start proxy server for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 250
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopServer()V
    .locals 5

    .prologue
    .line 256
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    .line 257
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 259
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 261
    :catch_1
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop proxy server for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    const/4 v1, 0x1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 266
    :catch_2
    move-exception v0

    .line 267
    :try_start_6
    const-string v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 265
    const/4 v2, 0x1

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 268
    :goto_1
    :try_start_8
    throw v1

    .line 266
    :catch_3
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method protected updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    .locals 12
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p2, "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 328
    .local v7, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 329
    .local v4, "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v2, "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    .line 365
    .end local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_0
    return-void

    .line 332
    .restart local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :pswitch_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 333
    .local v5, "uidListEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 335
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 336
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 362
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5    # "uidListEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurred while trying to apply rules to access local host for the vpn profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToDenyAccessToLocalHost(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    .line 341
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->rulesToCreateDownloadChain(I)V

    .line 342
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 343
    .local v6, "user":Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "com.android.providers.downloads"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 345
    .end local v6    # "user":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowDownloadManager(Ljava/util/HashSet;I)V

    .line 347
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToMarkDownloadManagerPackets(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 350
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfActiveUsers()Ljava/util/HashSet;

    move-result-object v3

    .line 351
    .local v3, "listOfUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 352
    .restart local v6    # "user":Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "com.android.providers.downloads"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowDownload(II)V

    goto :goto_3

    .line 355
    .end local v6    # "user":Ljava/lang/Integer;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToDenyAccessToLocalHost(I)V

    .line 356
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    .line 357
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->rulesToDeleteDownloadChain(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
