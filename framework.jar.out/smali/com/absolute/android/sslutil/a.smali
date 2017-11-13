.class final Lcom/absolute/android/sslutil/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/absolute/android/sslutil/SslUtil;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/absolute/android/sslutil/SslUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    iput-object p1, p0, Lcom/absolute/android/sslutil/a;->a:Lcom/absolute/android/sslutil/SslUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/absolute/android/sslutil/a;->c:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ABTTrustManager created... expectedCertSubjectName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hostSPKIHash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    .line 124
    return-void
.end method

.method private static a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    const/4 v0, 0x0

    .line 253
    if-eqz p0, :cond_a

    .line 254
    :try_start_0
    array-length v3, p0

    new-array v0, v3, [Ljava/security/cert/X509Certificate;

    move v3, v2

    .line 255
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 256
    aget-object v4, p0, v3

    aput-object v4, v0, v3

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_0
    array-length v3, p0

    if-le v3, v1, :cond_6

    move v4, v2

    .line 261
    :goto_1
    array-length v3, p0

    if-ge v4, v3, :cond_9

    move v3, v2

    .line 262
    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_2

    .line 264
    if-eq v4, v3, :cond_1

    .line 265
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 271
    :cond_2
    array-length v5, p0

    if-ne v3, v5, :cond_4

    .line 272
    const/4 v3, 0x0

    aget-object v4, p0, v4

    aput-object v4, v0, v3

    .line 277
    :goto_3
    if-eqz v1, :cond_7

    move v3, v2

    .line 278
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    move v1, v2

    .line 279
    :goto_5
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 280
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 281
    add-int/lit8 v4, v3, 0x1

    aget-object v1, p0, v1

    aput-object v1, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 261
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 279
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move-object p0, v0

    :cond_7
    :goto_6
    move-object v0, p0

    .line 295
    :cond_8
    :goto_7
    return-object v0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v2

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception on reorderCerts: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 131
    array-length v0, p1

    new-array v4, v0, [Ljava/security/cert/X509Certificate;

    move v0, v1

    .line 133
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 134
    aget-object v2, p1, v0

    aput-object v2, v4, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 141
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v5

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checkServerTrusted cert subjectName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcom/absolute/android/sslutil/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v2

    const/4 v5, 0x3

    const-string v6, "checkServerTrusted: Got expected certificate subject name"

    invoke-virtual {v2, v5, v6}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/absolute/android/sslutil/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 157
    if-eqz v0, :cond_b

    .line 158
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/absolute/android/crypt/HexUtilities;->EncodeBytesAsHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v2, p0, Lcom/absolute/android/sslutil/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 161
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v0

    const/4 v2, 0x3

    const-string v5, "checkServerTrusted: Cert Pinning worked, call checkServerTrusted"

    invoke-virtual {v0, v2, v5}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 163
    :try_start_1
    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move v2, v3

    .line 166
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v0

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkServerTrusted: certPinningSuccess="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    .line 167
    if-nez v2, :cond_4

    .line 168
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v5, "CertPinning-bad value: Certificate checking failed"

    invoke-direct {v0, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :goto_2
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "m_defaultTrustManager.checkServerTrusted exception - do our own checking"

    invoke-virtual {v5, v9, v6}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    .line 176
    if-eqz v2, :cond_8

    .line 182
    :try_start_3
    invoke-static {v4}, Lcom/absolute/android/sslutil/a;->a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 190
    invoke-virtual {p0}, Lcom/absolute/android/sslutil/a;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    move v0, v1

    .line 192
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_9

    .line 194
    aget-object v4, v5, v0

    move v2, v1

    .line 196
    :goto_4
    array-length v7, v6

    if-ge v2, v7, :cond_a

    .line 197
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    if-eqz v7, :cond_5

    .line 199
    :try_start_4
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move v2, v3

    .line 207
    :goto_5
    if-eqz v2, :cond_7

    .line 212
    :try_start_5
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_6

    move v2, v3

    .line 225
    :cond_1
    :goto_6
    if-eqz v2, :cond_7

    .line 232
    :goto_7
    if-nez v3, :cond_4

    .line 233
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "CheckServerTrusted: Root cert is not trusted"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 235
    :catch_1
    move-exception v0

    .line 236
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_2
    :try_start_6
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v2, "Bad subject value: Certificate checking failed"

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 174
    :catch_2
    move-exception v0

    move v2, v1

    goto :goto_2

    .line 172
    :cond_3
    :try_start_7
    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 241
    :cond_4
    return-void

    :catch_3
    move-exception v7

    .line 196
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move v2, v1

    move v4, v0

    .line 215
    :goto_8
    :try_start_8
    array-length v7, v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_1

    .line 217
    add-int/lit8 v2, v4, 0x1

    :try_start_9
    aget-object v2, v5, v2

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 215
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    goto :goto_8

    .line 220
    :catch_4
    move-exception v2

    move v2, v1

    .line 221
    goto :goto_6

    .line 192
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 239
    :cond_8
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :catch_5
    move-exception v0

    move v2, v3

    goto/16 :goto_2

    :cond_9
    move v3, v1

    goto :goto_7

    :cond_a
    move v2, v1

    goto :goto_5

    :cond_b
    move v2, v1

    goto/16 :goto_1
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
