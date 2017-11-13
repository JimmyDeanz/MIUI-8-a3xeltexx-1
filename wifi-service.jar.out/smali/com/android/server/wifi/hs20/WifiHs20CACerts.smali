.class public Lcom/android/server/wifi/hs20/WifiHs20CACerts;
.super Ljava/lang/Object;
.source "WifiHs20CACerts.java"


# static fields
.field private static final CERT_LENGTH_MAX:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "HS20CACerts"

.field private static final TEMP_CERT_PATH:Ljava/lang/String; = "/data/misc/wifi/hs20/CA_"


# instance fields
.field private CACERT_CONTENT_TYPE:Ljava/lang/String;

.field private caHttpConnection:Ljava/net/HttpURLConnection;

.field private caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field public mContext:Landroid/content/Context;

.field private m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

.field private responseCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20CertDetails;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "certDetails"    # Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "application/pkcs7-mime"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->CACERT_CONTENT_TYPE:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    .line 61
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private printCertSerial()V
    .locals 5

    .prologue
    .line 197
    const-string v2, "HS20CACerts"

    const-string v3, "printCertSerial:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v3, "HS20CACerts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serial number "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public genCertID()I
    .locals 8

    .prologue
    .line 208
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 209
    .local v0, "dtNow":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 210
    const-string v3, "%Y%m%d%H%M"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "lsNow":Ljava/lang/String;
    const-string v3, "HS20CACerts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time stamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 213
    .local v2, "mRandom":Ljava/util/Random;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    long-to-int v3, v4

    return v3
.end method

.method public getCACerts(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;
    .locals 14
    .param p1, "serverUri"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "certDetails":Lcom/android/server/wifi/hs20/WifiHs20CertDetails;
    const/4 v9, 0x0

    .line 70
    .local v9, "outStream":Ljava/io/OutputStream;
    :try_start_0
    const-string v11, "TLS"

    invoke-static {v11}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 71
    .local v7, "mSslContext":Ljavax/net/ssl/SSLContext;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "caurl":Ljava/net/URL;
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:caurl  :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v11, "https"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->httpConnect(Ljava/net/URL;)V

    .line 80
    :goto_0
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:response code during CAcerts:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->responseCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:got contentType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  m_certDetails.contentType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v13, v13, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->contentType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->responseCode:I

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_6

    .line 84
    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentType:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v11, v11, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->contentType:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 85
    :cond_0
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:content encoding:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:content length:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentLength:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/misc/wifi/hs20/CA_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->genCertID()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".pem"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "certPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "certFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 91
    :cond_1
    const/16 v11, 0x2710

    new-array v0, v11, [B

    .line 92
    .local v0, "buffer":[B
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v9    # "outStream":Ljava/io/OutputStream;
    .local v10, "outStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->is:Ljava/io/InputStream;

    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "n":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    .line 94
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:n value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 108
    .end local v8    # "n":I
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 109
    .end local v0    # "buffer":[B
    .end local v1    # "caurl":Ljava/net/URL;
    .end local v3    # "certFile":Ljava/io/File;
    .end local v5    # "certPath":Ljava/lang/String;
    .end local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .end local v10    # "outStream":Ljava/io/OutputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v9    # "outStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    if-eqz v9, :cond_2

    .line 115
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 121
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-object v2

    .line 76
    .restart local v1    # "caurl":Ljava/net/URL;
    .restart local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    :cond_3
    :try_start_4
    new-instance v4, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    .line 77
    .local v4, "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    const/4 v11, 0x0

    const-string v12, "EST"

    invoke-virtual {v4, v12}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchTrustManagerFactory(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 78
    invoke-virtual {p0, v1, v7}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->httpsConnect(Ljava/net/URL;Ljavax/net/ssl/SSLContext;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 108
    .end local v1    # "caurl":Ljava/net/URL;
    .end local v4    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 97
    .end local v9    # "outStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "caurl":Ljava/net/URL;
    .restart local v3    # "certFile":Ljava/io/File;
    .restart local v5    # "certPath":Ljava/lang/String;
    .restart local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .restart local v8    # "n":I
    .restart local v10    # "outStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 98
    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->is:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->pemRead(Ljava/io/File;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-result-object v2

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 101
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:certDetails.certs.size() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v9, v10

    .line 114
    .end local v0    # "buffer":[B
    .end local v3    # "certFile":Ljava/io/File;
    .end local v5    # "certPath":Ljava/lang/String;
    .end local v8    # "n":I
    .end local v10    # "outStream":Ljava/io/OutputStream;
    .restart local v9    # "outStream":Ljava/io/OutputStream;
    :goto_4
    if-eqz v9, :cond_2

    .line 115
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 117
    :catch_2
    move-exception v6

    .line 118
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 103
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:content type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 110
    .end local v1    # "caurl":Ljava/net/URL;
    .end local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    :catch_3
    move-exception v6

    .line 111
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 114
    if-eqz v9, :cond_2

    .line 115
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 117
    :catch_4
    move-exception v6

    .line 118
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 106
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "caurl":Ljava/net/URL;
    .restart local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    :cond_6
    :try_start_a
    const-string v11, "HS20CACerts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCACerts:response code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->responseCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 113
    .end local v1    # "caurl":Ljava/net/URL;
    .end local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    :catchall_0
    move-exception v11

    .line 114
    :goto_6
    if-eqz v9, :cond_7

    .line 115
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 119
    :cond_7
    :goto_7
    throw v11

    .line 117
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 118
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 117
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 118
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 113
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "outStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "caurl":Ljava/net/URL;
    .restart local v3    # "certFile":Ljava/io/File;
    .restart local v5    # "certPath":Ljava/lang/String;
    .restart local v7    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .restart local v10    # "outStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "outStream":Ljava/io/OutputStream;
    .restart local v9    # "outStream":Ljava/io/OutputStream;
    goto :goto_6

    .line 110
    .end local v9    # "outStream":Ljava/io/OutputStream;
    .restart local v10    # "outStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    move-object v9, v10

    .end local v10    # "outStream":Ljava/io/OutputStream;
    .restart local v9    # "outStream":Ljava/io/OutputStream;
    goto :goto_5
.end method

.method public httpConnect(Ljava/net/URL;)V
    .locals 3
    .param p1, "caurl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 143
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->responseCode:I

    .line 144
    const-string v0, "HS20CACerts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpConnect:response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentType:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentLength:I

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentEncoding:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->is:Ljava/io/InputStream;

    .line 149
    return-void
.end method

.method public httpsConnect(Ljava/net/URL;Ljavax/net/ssl/SSLContext;)V
    .locals 3
    .param p1, "caurl"    # Ljava/net/URL;
    .param p2, "mSslContext"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->responseCode:I

    .line 131
    const-string v0, "HS20CACerts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpsConnect:response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentType:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentLength:I

    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->contentEncoding:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->caHttpsConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->is:Ljava/io/InputStream;

    .line 136
    return-void
.end method

.method public pemRead(Ljava/io/File;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;
    .locals 20
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 153
    .local v2, "byteCert":[B
    const-string v16, "X.509"

    invoke-static/range {v16 .. v16}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 154
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    const-string v16, "HS20CACerts"

    const-string v17, "pemRead:reading from the temp certs file  path"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v14, "tempCACerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v12, 0x0

    .line 157
    .local v12, "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    const/4 v8, 0x0

    .line 159
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->CACERT_CONTENT_TYPE:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->contentType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 160
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 162
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 163
    const-string v16, "HS20CACerts"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "byteCert length:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v2

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "file length "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v13, Lcom/android/org/bouncycastle/cms/CMSSignedData;

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/android/org/bouncycastle/cms/CMSSignedData;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .end local v12    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    .local v13, "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    :try_start_2
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/cms/CMSSignedData;->getCertificates()Lcom/android/org/bouncycastle/util/Store;

    move-result-object v3

    .line 166
    .local v3, "certStore":Lcom/android/org/bouncycastle/util/Store;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/android/org/bouncycastle/util/Store;->getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 168
    .local v4, "certificateHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/org/bouncycastle/cert/X509CertificateHolder;>;"
    new-instance v6, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;

    invoke-direct {v6}, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;-><init>()V

    .line 169
    .local v6, "converter":Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/cert/X509CertificateHolder;

    .line 170
    .local v10, "holder":Lcom/android/org/bouncycastle/cert/X509CertificateHolder;
    const-string v16, "HS20CACerts"

    const-string v17, "pemRead:generating certificates"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v6, v10}, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;->getCertificate(Lcom/android/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 179
    .end local v3    # "certStore":Lcom/android/org/bouncycastle/util/Store;
    .end local v4    # "certificateHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/org/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v6    # "converter":Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
    .end local v10    # "holder":Lcom/android/org/bouncycastle/cert/X509CertificateHolder;
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    move-object v12, v13

    .line 180
    .end local v13    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v12    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    if-eqz v8, :cond_0

    .line 184
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->printCertSerial()V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certStatus:Z

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->m_certDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-object/from16 v16, v0

    return-object v16

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    .restart local v3    # "certStore":Lcom/android/org/bouncycastle/util/Store;
    .restart local v4    # "certificateHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/org/bouncycastle/cert/X509CertificateHolder;>;"
    .restart local v6    # "converter":Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    :cond_1
    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    move-object v12, v13

    .line 183
    .end local v3    # "certStore":Lcom/android/org/bouncycastle/util/Store;
    .end local v4    # "certificateHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/org/bouncycastle/cert/X509CertificateHolder;>;"
    .end local v6    # "converter":Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    .restart local v12    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    :goto_3
    if-eqz v8, :cond_0

    .line 184
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 186
    :catch_1
    move-exception v7

    .line 187
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 174
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_6
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v5, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 176
    .local v15, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 186
    .end local v15    # "x509Certificate":Ljava/security/cert/X509Certificate;
    .local v7, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 187
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 182
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 183
    :goto_4
    if-eqz v8, :cond_3

    .line 184
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 188
    :cond_3
    :goto_5
    throw v16

    .line 186
    :catch_3
    move-exception v7

    .line 187
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 182
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    :catchall_2
    move-exception v16

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    .restart local v12    # "s":Lcom/android/org/bouncycastle/cms/CMSSignedData;
    goto :goto_4

    .line 179
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
