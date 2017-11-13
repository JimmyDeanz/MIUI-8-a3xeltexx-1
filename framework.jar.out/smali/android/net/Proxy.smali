.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final DBG:Z

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field private static final EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field public static final EXTRA_PROXY_INFO:Ljava/lang/String; = "android.intent.extra.PROXY_INFO"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field public static final PROXY_EXCLLIST_INVALID:I = 0x5

.field public static final PROXY_HOSTNAME_EMPTY:I = 0x1

.field public static final PROXY_HOSTNAME_INVALID:I = 0x2

.field public static final PROXY_PORT_EMPTY:I = 0x3

.field public static final PROXY_PORT_INVALID:I = 0x4

.field public static final PROXY_VALID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Proxy"

.field private static sConnectivityManager:Landroid/net/ConnectivityManager; = null

.field private static final sDefaultProxySelector:Ljava/net/ProxySelector;

.field private static final setAuthForPacProfile:Ljava/lang/String; = "knox.vpn.pac.auth"

.field private static setKnoxProxySelector:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Landroid/net/Proxy;->DBG:Z

    .line 48
    sput v1, Landroid/net/Proxy;->setKnoxProxySelector:I

    .line 85
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 104
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 106
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 181
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 193
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 197
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v1

    .line 195
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_0
    const-string/jumbo v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-static {p0, v3}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 145
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move-object v2, v3

    .line 149
    :goto_0
    return-object v2

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 149
    goto :goto_0
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 161
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 162
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move v2, v3

    .line 166
    :goto_0
    return v2

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 166
    goto :goto_0
.end method

.method public static final getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, ""

    .line 120
    .local v0, "host":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 122
    .local v3, "uri":Ljava/net/URI;
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    .line 124
    .local v2, "proxySelector":Ljava/net/ProxySelector;
    invoke-virtual {v2, v3}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 127
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    .line 130
    .end local v1    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v2    # "proxySelector":Ljava/net/ProxySelector;
    .end local v3    # "uri":Ljava/net/URI;
    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    if-nez p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-eqz p0, :cond_0

    .line 207
    :try_start_0
    const-string/jumbo v2, "localhost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 208
    goto :goto_0

    .line 210
    :cond_2
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 211
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    .locals 7
    .param p0, "p"    # Landroid/net/ProxyInfo;

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    .line 251
    .local v1, "port":Ljava/lang/String;
    const/4 v2, 0x0

    .line 252
    .local v2, "username":Ljava/lang/String;
    const/4 v3, 0x0

    .line 254
    .local v3, "password":Ljava/lang/String;
    const/4 v4, 0x0

    .line 255
    .local v4, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 256
    .local v5, "pacFileUrl":Landroid/net/Uri;
    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    .line 267
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getKnoxVpnProfile()I

    move-result v6

    sput v6, Landroid/net/Proxy;->setKnoxProxySelector:I

    .line 272
    :cond_0
    if-eqz v2, :cond_1

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 273
    invoke-static/range {v0 .. v5}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {v0, v1, v4, v5}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;
    .param p3, "pacFileUrl"    # Landroid/net/Uri;

    .prologue
    .line 285
    sget-boolean v0, Landroid/net/Proxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHttpProxySystemProperty for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The hose value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The port value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 290
    :cond_1
    if-eqz p0, :cond_2

    .line 291
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    const-string v0, "ftp.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    :goto_0
    if-eqz p1, :cond_3

    .line 308
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    const-string v0, "ftp.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    :goto_1
    if-eqz p2, :cond_4

    .line 325
    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    :goto_2
    const-string/jumbo v0, "http.proxyUser"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    const-string/jumbo v0, "http.proxyPassword"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 338
    sget v0, Landroid/net/Proxy;->setKnoxProxySelector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 339
    new-instance v0, Landroid/net/KnoxVpnProxySelector;

    invoke-direct {v0}, Landroid/net/KnoxVpnProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 340
    const-string/jumbo v0, "knox.vpn.pac.auth"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    :goto_3
    return-void

    .line 299
    :cond_2
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    const-string v0, "ftp.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_3
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    const-string v0, "ftp.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_4
    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 344
    :cond_5
    new-instance v0, Landroid/net/PacProxySelector;

    invoke-direct {v0}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 346
    const-string/jumbo v0, "knox.vpn.pac.auth"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 351
    :cond_6
    sget-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 353
    const-string/jumbo v0, "knox.vpn.pac.auth"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "exclList"    # Ljava/lang/String;
    .param p5, "pacFileUrl"    # Landroid/net/Uri;

    .prologue
    .line 366
    sget-boolean v0, Landroid/net/Proxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHttpProxySystemProperty for uid with auth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The hose value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The port value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 371
    :cond_1
    if-eqz p0, :cond_2

    .line 372
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    const-string v0, "ftp.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    :goto_0
    if-eqz p1, :cond_3

    .line 387
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    const-string v0, "ftp.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    :goto_1
    if-eqz p2, :cond_4

    .line 402
    const-string/jumbo v0, "http.proxyUser"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    :goto_2
    if-eqz p3, :cond_5

    .line 407
    const-string/jumbo v0, "http.proxyPassword"

    invoke-static {v0, p3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    :goto_3
    if-eqz p4, :cond_6

    .line 412
    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0, p4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0, p4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    :goto_4
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 420
    sget v0, Landroid/net/Proxy;->setKnoxProxySelector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 421
    new-instance v0, Landroid/net/KnoxVpnProxySelector;

    invoke-direct {v0}, Landroid/net/KnoxVpnProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 422
    const-string/jumbo v0, "knox.vpn.pac.auth"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    :goto_5
    return-void

    .line 379
    :cond_2
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    const-string v0, "ftp.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 394
    :cond_3
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    const-string v0, "ftp.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 404
    :cond_4
    const-string/jumbo v0, "http.proxyUser"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 409
    :cond_5
    const-string/jumbo v0, "http.proxyPassword"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 415
    :cond_6
    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 426
    :cond_7
    new-instance v0, Landroid/net/PacProxySelector;

    invoke-direct {v0}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 428
    const-string/jumbo v0, "knox.vpn.pac.auth"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 432
    :cond_8
    sget-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 434
    const-string/jumbo v0, "knox.vpn.pac.auth"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 224
    sget-object v5, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 225
    .local v2, "match":Ljava/util/regex/Matcher;
    sget-object v5, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 227
    .local v1, "listMatch":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x2

    .line 243
    :cond_0
    :goto_0
    return v4

    .line 229
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x5

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x3

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    .line 235
    :cond_4
    const/4 v3, -0x1

    .line 237
    .local v3, "portVal":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 241
    if-lez v3, :cond_0

    const v5, 0xffff

    if-gt v3, v5, :cond_0

    .line 243
    .end local v3    # "portVal":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 238
    .restart local v3    # "portVal":I
    :catch_0
    move-exception v0

    .line 239
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
