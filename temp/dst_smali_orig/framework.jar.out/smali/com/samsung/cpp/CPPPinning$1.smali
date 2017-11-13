.class Lcom/samsung/cpp/CPPPinning$1;
.super Ljava/lang/Object;
.source "CPPPinning.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/cpp/CPPPinning;->query()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPPinning;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPPinning;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPPinning$1;->this$0:Lcom/samsung/cpp/CPPPinning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    const-string v0, "CPPPinning"

    const-string v1, "--check CLIENT Trusted--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 17
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-string v14, "CPPPinning"

    const-string v15, "--check SERVER Trusted--"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "-----BEGIN CERTIFICATE-----MIIDjTCCAnWgAwIBAgIJAJB9dHQSUU1ZMA0GCSqGSIb3DQEBCwUAMF0xCzAJBgNVBAYTAktSMRIwEAYDVQQIDAlLeXVuZ2tpZG8xDjAMBgNVBAcMBVN1d29uMRwwGgYDVQQKDBNTYW1zdW5nIEVsZWN0cm9uaWNzMQwwCgYDVQQLDANCMkIwHhcNMTUwNzIxMDkwMTA0WhcNMzUwNzE2MDkwMTA0WjBdMQswCQYDVQQGEwJLUjESMBAGA1UECAwJS3l1bmdraWRvMQ4wDAYDVQQHDAVTdXdvbjEcMBoGA1UECgwTU2Ftc3VuZyBFbGVjdHJvbmljczEMMAoGA1UECwwDQjJCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuA3G8qE4Uljz/+oXTC/mhYs/y0ly+Qq2RCE+cYeLA7Hpmb0PRbzjk6RVgXs1hbpmaau9DZxzJGif4dyM6D+b1H9RIjWSQrJ6BxoeckDyLohw8n3zHF63anA4mvLs4WKh44jlgrW+fAnQ8QCTSeDybvqGzYDOrfEdaQqLXjaJhIMfNa2TegQlXy+6T0A8kIiYza9mbohf+HfhhPajDDG92Weuf8mzi+/sW6faY/sNmQ3meD3Yxv3S0AAhbodO0aopJE8n9/21S4HL1B582WCCkCmBZ2HaIZ5+PXYb+iXKzfhYMTNCrCLb3Cwz8QGEECj7hcyqxT4Ht/dy9dryiPHTBQIDAQABo1AwTjAdBgNVHQ4EFgQUV/4SiqEpt7q+OTouCWhIRs8gV3gwHwYDVR0jBBgwFoAUV/4SiqEpt7q+OTouCWhIRs8gV3gwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEALjxOBO7i78pjCcGR8/yBIFk/Hb5dAU4N3Yb0FtaocIUg0KxOQSGwlUsynT1Ttrd4OGsshTaWuOGcXtvgC+UISL2ygnNPsgU29ZjVGE82gnmf0dU2I5nzNXQF5XsAlYa/EY4q9YlLuSXnO3t1WvRGzl9Qu5QrGWre3FgzNPKkWdopsNDcd52BLS5OHyBMOqygt95kmLae/+76FYa8qsTB86JCAqW6QNWTgJ9t59CJ/lsgjV8IKguBRuulmwUrvz5QYKz2Yqwnd24to8lNj6qzWps5mc3b+fuJWDhSQznjL4JTXnPZ17rG7jVTVzv1lOZBfY+BJjVOetPEZLCaJw+XkQ==-----END CERTIFICATE-----"

    invoke-static {v14}, Lcom/samsung/cpp/CPPPinning;->pemToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    .local v8, "pinnedMasterCertificate":Ljava/security/cert/X509Certificate;
    if-nez v8, :cond_0

    const-string v14, "CPPPinning"

    const-string v15, "Fail converting the master pem cert to X509!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/security/cert/CertificateException;

    const-string v15, "Failed to convert master pem to X509!"

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-nez v14, :cond_1

    const-string v14, "CPPPinning"

    const-string v15, "--check SERVER Trusted-- ...... SERVER DOES NOT PROVIDE A CERTIFICATE CHAIN!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "This server does not provide a certificate chain"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    const/4 v7, 0x0

    .local v7, "matched":Z
    const/4 v14, 0x1

    aget-object v10, p1, v14

    .local v10, "rootX509":Ljava/security/cert/X509Certificate;
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .local v9, "pubkeyOfRoot":Ljava/security/PublicKey;
    const-string v14, "CPPPinning"

    const-string v15, "Comparing Pub Key"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    .local v11, "tempTrustedPubKey":Ljava/security/PublicKey;
    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "CPPPinning"

    const-string v15, "@query matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_2
    if-eqz v7, :cond_4

    :try_start_0
    const-string v14, "CPPPinning"

    const-string v15, "query() --check SERVER Trusted-- ...... performing customary SSL/TLS checks..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "X509"

    invoke-static {v14}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v12

    .local v12, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .local v5, "keyStore":Ljava/security/KeyStore;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v14, "Master CA"

    invoke-virtual {v5, v14, v8}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v12, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v12}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .local v2, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v13, v2, v4

    .local v13, "trustManager":Ljavax/net/ssl/TrustManager;
    check-cast v13, Ljavax/net/ssl/X509TrustManager;

    .end local v13    # "trustManager":Ljavax/net/ssl/TrustManager;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "i$":I
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    .end local v6    # "len$":I
    .end local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "CPPPinning"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "query() --check SERVER Trusted-- exception when performing customary SSL/TLS check! : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "CPPPinning"

    const-string v15, "query() --check SERVER Trusted-- ...... SERVER IS NOT TRUSTED! failed customary SSL/TLS check!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/security/cert/CertificateException;

    const-string v15, "cpp pinningServer certificate does not pass SSL/TLS check"

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v4    # "i$":I
    .restart local v5    # "keyStore":Ljava/security/KeyStore;
    .restart local v6    # "len$":I
    .restart local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_3
    const-string v14, "CPPPinning"

    const-string v15, "query() --check SERVER Trusted-- ...... SERVER IS TRUSTED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v2    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "i$":I
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    .end local v6    # "len$":I
    .end local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_4
    const-string v14, "CPPPinning"

    const-string v15, "query() --check SERVER Trusted-- ...... SERVER IS NOT TRUSTED!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/security/cert/CertificateException;

    const-string v15, "cpp pinningThis server does not have the correct certificate"

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    const-string v0, "CPPPinning"

    const-string v1, "--getAcceptedIssuers--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
