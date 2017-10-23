.class public Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "WifiHs20SoapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20SoapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HS20SSLSocketFactory"
.end annotation


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;Ljava/security/KeyStore;)V
    .locals 5
    .param p2, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    .line 247
    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 243
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->keyManagers:[Ljavax/net/ssl/KeyManager;
    invoke-static {p1}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;)[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->trustManagers:[Ljavax/net/ssl/TrustManager;
    invoke-static {p1}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->access$100(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 259
    .local v1, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 260
    .local v0, "ocspSocket":Ljava/net/Socket;
    return-object v0
.end method
