.class public Lcom/samsung/cpp/CPPPinning;
.super Ljava/lang/Object;
.source "CPPPinning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPPinning$CustomTrustManager;
    }
.end annotation


# static fields
.field private static final BEGIN:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field private static final END:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final MASTER_PINNING_SERVER_CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----MIIDjTCCAnWgAwIBAgIJAJB9dHQSUU1ZMA0GCSqGSIb3DQEBCwUAMF0xCzAJBgNVBAYTAktSMRIwEAYDVQQIDAlLeXVuZ2tpZG8xDjAMBgNVBAcMBVN1d29uMRwwGgYDVQQKDBNTYW1zdW5nIEVsZWN0cm9uaWNzMQwwCgYDVQQLDANCMkIwHhcNMTUwNzIxMDkwMTA0WhcNMzUwNzE2MDkwMTA0WjBdMQswCQYDVQQGEwJLUjESMBAGA1UECAwJS3l1bmdraWRvMQ4wDAYDVQQHDAVTdXdvbjEcMBoGA1UECgwTU2Ftc3VuZyBFbGVjdHJvbmljczEMMAoGA1UECwwDQjJCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuA3G8qE4Uljz/+oXTC/mhYs/y0ly+Qq2RCE+cYeLA7Hpmb0PRbzjk6RVgXs1hbpmaau9DZxzJGif4dyM6D+b1H9RIjWSQrJ6BxoeckDyLohw8n3zHF63anA4mvLs4WKh44jlgrW+fAnQ8QCTSeDybvqGzYDOrfEdaQqLXjaJhIMfNa2TegQlXy+6T0A8kIiYza9mbohf+HfhhPajDDG92Weuf8mzi+/sW6faY/sNmQ3meD3Yxv3S0AAhbodO0aopJE8n9/21S4HL1B582WCCkCmBZ2HaIZ5+PXYb+iXKzfhYMTNCrCLb3Cwz8QGEECj7hcyqxT4Ht/dy9dryiPHTBQIDAQABo1AwTjAdBgNVHQ4EFgQUV/4SiqEpt7q+OTouCWhIRs8gV3gwHwYDVR0jBBgwFoAUV/4SiqEpt7q+OTouCWhIRs8gV3gwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEALjxOBO7i78pjCcGR8/yBIFk/Hb5dAU4N3Yb0FtaocIUg0KxOQSGwlUsynT1Ttrd4OGsshTaWuOGcXtvgC+UISL2ygnNPsgU29ZjVGE82gnmf0dU2I5nzNXQF5XsAlYa/EY4q9YlLuSXnO3t1WvRGzl9Qu5QrGWre3FgzNPKkWdopsNDcd52BLS5OHyBMOqygt95kmLae/+76FYa8qsTB86JCAqW6QNWTgJ9t59CJ/lsgjV8IKguBRuulmwUrvz5QYKz2Yqwnd24to8lNj6qzWps5mc3b+fuJWDhSQznjL4JTXnPZ17rG7jVTVzv1lOZBfY+BJjVOetPEZLCaJw+XkQ==-----END CERTIFICATE-----"

.field private static final MASTER_PINNING_SERVER_URL:Ljava/lang/String; = "https://pinning.secb2b.com/service/cell/leafcert"

.field public static final PINNING_EXCEPTION_STRING:Ljava/lang/String; = "cpp pinning"

.field private static final TAG:Ljava/lang/String; = "CPPPinning"

.field private static instance:Lcom/samsung/cpp/CPPPinning;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbAdapter:Lcom/samsung/cpp/CPPCertDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/cpp/CPPPinning;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "CPPPinning"

    const-string v1, "@Pinning constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/samsung/cpp/CPPPinning;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/samsung/cpp/CPPCertDbAdapter;

    iget-object v1, p0, Lcom/samsung/cpp/CPPPinning;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/cpp/CPPCertDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPPinning;->mDbAdapter:Lcom/samsung/cpp/CPPCertDbAdapter;

    .line 71
    iget-object v0, p0, Lcom/samsung/cpp/CPPPinning;->mDbAdapter:Lcom/samsung/cpp/CPPCertDbAdapter;

    invoke-virtual {v0}, Lcom/samsung/cpp/CPPCertDbAdapter;->open()Lcom/samsung/cpp/CPPCertDbAdapter;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/cpp/CPPPinning;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPPinning;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/cpp/CPPPinning;->query()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/cpp/CPPPinning;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v0, "CPPPinning"

    const-string v1, "@getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/samsung/cpp/CPPPinning;

    invoke-direct {v0, p0}, Lcom/samsung/cpp/CPPPinning;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    .line 64
    :cond_0
    sget-object v0, Lcom/samsung/cpp/CPPPinning;->instance:Lcom/samsung/cpp/CPPPinning;

    return-object v0
.end method

.method public static pemToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "pemCert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 221
    const-string v6, "CPPPinning"

    const-string v8, "@pemToX509"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v3, 0x0

    .line 225
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-nez p0, :cond_0

    .line 226
    const-string v6, "CPPPinning"

    const-string v8, "@pemToX509 - Cert String is Null!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 244
    :goto_0
    return-object v6

    .line 231
    :cond_0
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 232
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-static {p0}, Lcom/samsung/cpp/CPPPinning;->readPemBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 233
    .local v2, "byteArray":[B
    if-eqz v2, :cond_1

    .line 234
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 235
    .local v1, "bit":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "bit":Ljava/io/ByteArrayInputStream;
    :cond_1
    move-object v6, v3

    .line 237
    goto :goto_0

    .line 239
    .end local v2    # "byteArray":[B
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v5

    .line 240
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "CPPPinning"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@pemToX509 - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 244
    goto :goto_0
.end method

.method private query()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 76
    const-string v12, "CPPPinning"

    const-string v13, "@query"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "https://pinning.secb2b.com/service/cell/leafcert"

    .line 79
    .local v5, "finalUrl":Ljava/lang/String;
    const-string v12, "CPPPinning"

    const-string v13, "@query - url : https://pinning.secb2b.com/service/cell/leafcert"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v12, 0x1

    new-array v9, v12, [Ljavax/net/ssl/TrustManager;

    new-instance v12, Lcom/samsung/cpp/CPPPinning$1;

    invoke-direct {v12, p0}, Lcom/samsung/cpp/CPPPinning$1;-><init>(Lcom/samsung/cpp/CPPPinning;)V

    aput-object v12, v9, v14

    .line 156
    .local v9, "masterServerTrustManager":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v12, "TLS"

    invoke-static {v12}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 157
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v9, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 159
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://pinning.secb2b.com/service/cell/leafcert"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 160
    .local v2, "conn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 161
    const/16 v12, 0x1770

    invoke-virtual {v2, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 162
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 164
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v6

    .line 165
    .local v6, "httpResponseCode":I
    const-string v12, "CPPPinning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "query() Http Response Code : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "httpResponseMsg":Ljava/lang/String;
    const-string v12, "CPPPinning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "query() Http Response Msg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v12, 0xc8

    if-ne v6, v12, :cond_1

    .line 170
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 171
    .local v8, "is":Ljava/io/InputStream;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v11, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 175
    .local v0, "byteBuffer":[B
    :goto_0
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "nLength":I
    if-lez v10, :cond_0

    .line 176
    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 185
    .end local v0    # "byteBuffer":[B
    .end local v2    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    .end local v6    # "httpResponseCode":I
    .end local v7    # "httpResponseMsg":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "nLength":I
    .end local v11    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 186
    .local v4, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 188
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_2
    const-string v12, "CPPPinning"

    const-string v13, "@query - done"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 178
    .restart local v0    # "byteBuffer":[B
    .restart local v2    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "context":Ljavax/net/ssl/SSLContext;
    .restart local v6    # "httpResponseCode":I
    .restart local v7    # "httpResponseMsg":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v10    # "nLength":I
    .restart local v11    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 179
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 181
    .local v1, "byteData":[B
    iget-object v12, p0, Lcom/samsung/cpp/CPPPinning;->mDbAdapter:Lcom/samsung/cpp/CPPCertDbAdapter;

    invoke-virtual {v12, v1}, Lcom/samsung/cpp/CPPCertDbAdapter;->updateCert([B)V

    .line 183
    .end local v0    # "byteBuffer":[B
    .end local v1    # "byteData":[B
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "nLength":I
    .end local v11    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 185
    .end local v2    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    .end local v6    # "httpResponseCode":I
    .end local v7    # "httpResponseMsg":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static readPemBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 248
    const-string v1, "CPPPinning"

    const-string v2, "@readPemBytes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move-object v0, p0

    .line 250
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 252
    const-string v1, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    const-string v1, "-----END CERTIFICATE-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-----END CERTIFICATE-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    :cond_1
    const-string v1, "-----END CERTIFICATE-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 261
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTrustManagers(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;
    .locals 7
    .param p1, "endpointUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 192
    const-string v3, "CPPPinning"

    const-string v4, "@getTrustManagers"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const-string v3, "https://"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_0
    :goto_0
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "split":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":443"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v3, p0, Lcom/samsung/cpp/CPPPinning;->mDbAdapter:Lcom/samsung/cpp/CPPCertDbAdapter;

    invoke-virtual {v3, p1}, Lcom/samsung/cpp/CPPCertDbAdapter;->getCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "pinnedCert":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljavax/net/ssl/TrustManager;

    .line 207
    .local v1, "result":[Ljavax/net/ssl/TrustManager;
    if-nez v0, :cond_2

    .line 208
    const-string v3, "CPPPinning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@getTrustManagers - no pinned certificate found for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v3, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;-><init>(Lcom/samsung/cpp/CPPPinning;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v6

    .line 215
    :goto_1
    const-string v3, "CPPPinning"

    const-string v4, "@getTrustManagers - done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v1

    .line 196
    .end local v0    # "pinnedCert":Ljava/lang/String;
    .end local v1    # "result":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_1
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 212
    .restart local v0    # "pinnedCert":Ljava/lang/String;
    .restart local v1    # "result":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "split":[Ljava/lang/String;
    :cond_2
    const-string v3, "CPPPinning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@getTrustManagers - found pinned certificates for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v3, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/cpp/CPPPinning$CustomTrustManager;-><init>(Lcom/samsung/cpp/CPPPinning;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v6

    goto :goto_1
.end method
