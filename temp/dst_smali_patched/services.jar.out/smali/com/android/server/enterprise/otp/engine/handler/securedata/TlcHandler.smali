.class public Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;
.super Ljava/lang/Object;
.source "TlcHandler.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/handler/securedata/ISecureData;


# static fields
.field static final DB_HMAC_KEY:I = 0x0

.field static final DB_HMAC_VALUE:I = 0x1

.field public static sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private byteToHex([B)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # [B

    .prologue
    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .local v1, "b":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getDeviceCertPublicKey()[B
    .locals 15

    .prologue
    const/4 v14, 0x1

    const-string v13, "TlcHandler::getDeviceCertPublicKey Enter"

    invoke-static {v13}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .local v0, "KNOX_KEY_TYPE_RSA_CERT":I
    const/4 v10, 0x0

    .local v10, "otpCert":[B
    const/4 v11, 0x0

    .local v11, "otpCertParsed":[B
    const/4 v12, 0x0

    .local v12, "publicKey":[B
    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    :try_start_0
    array-length v13, v10

    if-ge v4, v13, :cond_2

    aget-byte v13, v10, v4

    if-ne v13, v14, :cond_2

    add-int/lit8 v4, v4, 0x1

    aget-byte v13, v10, v4

    and-int/lit16 v9, v13, 0xff

    .local v9, "len":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v13, v10, v4

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v9, v13

    add-int/lit8 v4, v4, 0x1

    if-ne v8, v14, :cond_1

    new-array v11, v9, [B

    const/4 v7, 0x0

    .local v7, "j":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v7, v9, :cond_0

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v13, v10, v5

    aput-byte v13, v11, v7

    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    :cond_0
    move v4, v5

    .end local v5    # "i":I
    .end local v7    # "j":I
    .restart local v4    # "i":I
    :cond_1
    add-int/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v9    # "len":I
    :cond_2
    if-eqz v11, :cond_3

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v6, "inputstream":Ljava/io/InputStream;
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "i":I
    .end local v6    # "inputstream":Ljava/io/InputStream;
    .end local v8    # "k":I
    :cond_3
    :goto_2
    return-object v12

    .restart local v4    # "i":I
    .restart local v8    # "k":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;
    .locals 4

    .prologue
    const-class v3, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    if-nez v2, :cond_1

    const-string v2, "TlcHandler::getInstance - New instance created"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;-><init>()V

    sput-object v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    sget-object v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->otpInit()I

    sget-object v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDbHmacKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "oldDbHmacKey":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ret":I
    if-nez v0, :cond_0

    sget-object v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->setDbHmacKey()I

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "TlcHandler - Key creation failed"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_2
    if-nez v0, :cond_1

    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getOtpDbHmac()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "TlcHandler - HAMC Key is NULL, whereas last saved HMAC VALUE is not NULL."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getLength([B)I
    .locals 1
    .param p1, "in"    # [B

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method private getString([B)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # [B

    .prologue
    if-nez p1, :cond_0

    const-string v0, "NULL"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static native nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeDeleteToken(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGenerateOtp(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetCertificate()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetDbHmacData(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetDerivedKey(Ljava/lang/String;I[BIII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetHmac(Ljava/lang/String;I[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeGetKeyProvClientHello(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIIII)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeOtpInit()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeOtpShutdown()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method

.method public static native nativeSetDbHmacData(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized createToken(Landroid/os/Bundle;)I
    .locals 35
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::createToken - ENTER "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v8, "OTP_INTERNAL_TOKEN_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "token_id":Ljava/lang/String;
    const-string v8, "OTP_OATH_PROTOCOL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "oath_protocol":I
    const-string v8, "OTP_LENGTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .local v12, "otp_len":I
    const-string v8, "OTP_ENCODING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "otp_encoding":I
    const-string v8, "OTP_PARAM"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .local v10, "otp_param":J
    const-string v8, "SECRET_ENCRYPTION_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .local v17, "encryption_algo":I
    const/4 v15, 0x0

    .local v15, "encryption_key":[B
    const/16 v20, 0x0

    .local v20, "pwd":[B
    const/16 v8, 0x184

    move/from16 v0, v17

    if-eq v0, v8, :cond_0

    const/16 v8, 0x185

    move/from16 v0, v17

    if-ne v0, v8, :cond_1

    :cond_0
    const-string v8, "SECRET_ENCRYPTION_PASSWORD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    :goto_0
    const-string v8, "SHARED_SECRET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .local v7, "shared_secret":[B
    const-string v8, "SECRET_ENCRYPTION_IV"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v18

    .local v18, "iv":[B
    const-string v8, "OCRA_SUITE"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "ocra_suite":Ljava/lang/String;
    const-string v8, "TIME_DRIFT"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .local v25, "time_drift":I
    const-string v8, "SECRET_ENCRYPTION_PBE_SALT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    .local v22, "salt":[B
    const-string v8, "SECRET_ENCRYPTION_PBE_ITERATION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .local v24, "num_iteration":I
    const-string v8, "OTP_HASH_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .local v9, "hash_algo":I
    const/16 v33, 0x0

    .local v33, "flags":I
    const-string v8, "DSKPP_SERVER_ID"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "serverId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | token_id = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | oath_protocol = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | otp_len = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | otp_encoding = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | hash_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | otp_param (initial_counter/step_size) = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | shared_secret_encryption_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | shared_secret_encryption_key = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | shared_secret = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | ocra_suite = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | time_drift = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpCreateToken | serverId = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v34, 0x4ff

    .local v34, "ret":I
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v23

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v5 .. v33}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    :try_end_1
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v34

    :goto_1
    monitor-exit p0

    return v34

    .end local v7    # "shared_secret":[B
    .end local v9    # "hash_algo":I
    .end local v14    # "ocra_suite":Ljava/lang/String;
    .end local v18    # "iv":[B
    .end local v22    # "salt":[B
    .end local v24    # "num_iteration":I
    .end local v25    # "time_drift":I
    .end local v28    # "serverId":Ljava/lang/String;
    .end local v33    # "flags":I
    .end local v34    # "ret":I
    :cond_1
    :try_start_2
    const-string v8, "SECRET_ENCRYPTION_PASSWORD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    goto/16 :goto_0

    .restart local v7    # "shared_secret":[B
    .restart local v9    # "hash_algo":I
    .restart local v14    # "ocra_suite":Ljava/lang/String;
    .restart local v18    # "iv":[B
    .restart local v22    # "salt":[B
    .restart local v24    # "num_iteration":I
    .restart local v25    # "time_drift":I
    .restart local v28    # "serverId":Ljava/lang/String;
    .restart local v33    # "flags":I
    .restart local v34    # "ret":I
    :catch_0
    move-exception v4

    .local v4, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otpjni nativeCreateToken Exception : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v34

    goto :goto_1

    .end local v4    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v5    # "token_id":Ljava/lang/String;
    .end local v6    # "oath_protocol":I
    .end local v7    # "shared_secret":[B
    .end local v9    # "hash_algo":I
    .end local v10    # "otp_param":J
    .end local v12    # "otp_len":I
    .end local v13    # "otp_encoding":I
    .end local v14    # "ocra_suite":Ljava/lang/String;
    .end local v15    # "encryption_key":[B
    .end local v17    # "encryption_algo":I
    .end local v18    # "iv":[B
    .end local v20    # "pwd":[B
    .end local v22    # "salt":[B
    .end local v24    # "num_iteration":I
    .end local v25    # "time_drift":I
    .end local v28    # "serverId":Ljava/lang/String;
    .end local v33    # "flags":I
    .end local v34    # "ret":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized deleteToken(Ljava/lang/String;)I
    .locals 4
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TlcHandler::deleteToken - ENTER ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4ff

    .local v1, "ret":I
    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeDeleteToken(Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otpjni nativeDeleteToken Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized generateOtp(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v10, "TlcHandler::generateOtp - ENTER"

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v10, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "token_id":Ljava/lang/String;
    const-string v10, "OTP_OATH_PROTOCOL"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "oath_protocol":I
    const-string v10, "OCRA_PIN"

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "pin":Ljava/lang/String;
    const-string v10, "OCRA_SESSION"

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "session":Ljava/lang/String;
    const-string v10, "OCRA_CHALLENGE"

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "challenge":Ljava/lang/String;
    const-string v10, "OCRA_IS_SIGNATURE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "is_signature":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .local v2, "current_time":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | token_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | oath_protocol = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | current_time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_pin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_challenge = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_session = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TlcHandler::generateOtp | ocra_is_signature = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    .local v9, "ret":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeGenerateOtp(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_0
    monitor-exit p0

    return-object v9

    :catch_0
    move-exception v8

    .local v8, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "otpjni generateOtp Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "token_id":Ljava/lang/String;
    .end local v1    # "oath_protocol":I
    .end local v2    # "current_time":J
    .end local v4    # "challenge":Ljava/lang/String;
    .end local v5    # "pin":Ljava/lang/String;
    .end local v6    # "session":Ljava/lang/String;
    .end local v7    # "is_signature":I
    .end local v8    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v9    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public getCertificate()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const-string v2, "TlcHandler::getCertificate Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "cert":[B
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeGetCertificate()[B
    :try_end_0
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otpjni nativeGetCertificate Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    goto :goto_0
.end method

.method public declared-synchronized getDbHmacKey()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeGetDbHmacData(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otpjni nativeGetDbHmacData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B
    .locals 9
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "keyParams"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "TlcHandler::getDerivedKey Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v0, "CRYPTO_KDF_TYPE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "hmacType":I
    const-string v0, "CRYPTO_SALT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "salt":[B
    const-string v0, "CRYPTO_ITERATION_COUNT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "iterationCount":I
    const-string v0, "CRYPTO_DERIVEDKEY_LENGTH"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "keyLength":I
    if-eqz v2, :cond_0

    array-length v3, v2

    .local v3, "saltLen":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "key":[B
    move-object v0, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeGetDerivedKey(Ljava/lang/String;I[BIII)[B
    :try_end_0
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    return-object v7

    .end local v3    # "saltLen":I
    .end local v7    # "key":[B
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "saltLen":I
    .restart local v7    # "key":[B
    :catch_0
    move-exception v6

    .local v6, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "otpjni nativeGetDerivedKey Exception : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getHmac(Ljava/lang/String;I[B)[B
    .locals 6
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "msg"    # [B

    .prologue
    const-string v4, "TlcHandler::getHmac Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    array-length v3, p3

    .local v3, "msgLen":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "key":[B
    const/16 v2, 0x14

    .local v2, "key_len":I
    const/16 v4, 0x170

    if-ne p2, v4, :cond_1

    const/16 v2, 0x14

    :goto_1
    :try_start_0
    invoke-static {p1, p2, p3, v3, v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeGetHmac(Ljava/lang/String;I[BII)[B
    :try_end_0
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    move-object v4, v1

    :goto_3
    return-object v4

    .end local v1    # "key":[B
    .end local v2    # "key_len":I
    .end local v3    # "msgLen":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .restart local v1    # "key":[B
    .restart local v2    # "key_len":I
    .restart local v3    # "msgLen":I
    :cond_1
    const/16 v4, 0x171

    if-ne p2, v4, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otpjni nativeGetHmac Error Unknown hmac type  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otpjni nativeGetHmac Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public declared-synchronized getOtpDbHmac()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeGetDbHmacData(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otpjni nativeGetDbHmacData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .locals 5
    .param p1, "trigger"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;

    .prologue
    const-string v3, "TlcHandler::keyProvClientHello Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "objClientHello":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    const/4 v0, 0x0

    .local v0, "encryptionKey":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "encryptionKeyB":[B
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getDskppVariant()I

    move-result v3

    const/16 v4, 0x50a

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->isbUseCertificate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDeviceCertPublicKey()[B

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPHandler;->keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;[B)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getDskppVariant()I

    move-result v3

    const/16 v4, 0x50b

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getServerPublicKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public keyProvServerFinish(Landroid/os/Bundle;)I
    .locals 38
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-string v8, "TlcHandler::keyProvServerFinish Enter"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v8, "OTP_INTERNAL_TOKEN_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "token_id":Ljava/lang/String;
    const-string v8, "OTP_OATH_PROTOCOL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "oath_protocol":I
    const-string v8, "OTP_LENGTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .local v12, "otp_len":I
    const-string v8, "OTP_ENCODING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "otp_encoding":I
    const-string v8, "OTP_PARAM"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v36

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .local v10, "otp_param":J
    const-string v8, "OCRA_SUITE"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "ocra_suite":Ljava/lang/String;
    const-string v8, "TIME_DRIFT"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .local v25, "time_drift":I
    const-string v8, "OTP_HASH_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .local v9, "hash_algo":I
    const/16 v33, 0x0

    .local v33, "flags":I
    const-string v8, "SECRET_ENCRYPTION_ALGO"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .local v17, "encryption_algo":I
    const-string v8, "DSKPP_CLIENT_MAC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v26

    .local v26, "msg_hash":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v27

    .local v27, "msg_hash_len":I
    const-string v8, "DSKPP_SERVER_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "server_id":Ljava/lang/String;
    const-string v8, "DSKPP_KEY_PROV"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v29

    .local v29, "k_prov":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v30

    .local v30, "k_prov_len":I
    const-string v8, "DSKPP_KEY_CONFIRMATION_MAC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v31

    .local v31, "key_confirmation_mac":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v32

    .local v32, "key_confirmation_mac_len":I
    const/4 v7, 0x0

    .local v7, "shared_secret":[B
    const/4 v15, 0x0

    .local v15, "encryption_key":[B
    const/16 v18, 0x0

    .local v18, "iv":[B
    const/16 v20, 0x0

    .local v20, "pwd":[B
    const/16 v22, 0x0

    .local v22, "salt":[B
    const/16 v24, 0x0

    .local v24, "num_iteration":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "token_id : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "oath_protocol : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otp_len : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otp_encoding : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otp_param : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ocra_suite : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "time_drift : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hash_algo : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "encryption_algo : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "msg_hash : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "msg_hash_len : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "server_id : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "k_prov : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "k_prov_len : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "key_confirmation_mac : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const/16 v34, 0x4ff

    .local v34, "ret":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v23

    invoke-static/range {v5 .. v33}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    :try_end_0
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_0 .. :try_end_0} :catch_0

    move-result v34

    :goto_0
    return v34

    :catch_0
    move-exception v4

    .local v4, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otpjni nativeCreateToken Exception : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v34

    goto :goto_0
.end method

.method public declared-synchronized otpInit()I
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "TlcHandler::otpInit - ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4ff

    .local v1, "ret":I
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeOtpInit()I
    :try_end_1
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otpjni otpInit Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized otpShutdown()I
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "TlcHandler::otpShutdown - ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4ff

    .local v1, "ret":I
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeOtpShutdown()I
    :try_end_1
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otpjni nativeOtpShutdown Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resyncToken(Landroid/os/Bundle;)I
    .locals 35
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v8, "OTP_INTERNAL_TOKEN_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "token_id":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::resyncToken - ENTER ["

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const/16 v33, 0x0

    .local v33, "flags":I
    const-string v8, "OTP_OATH_PROTOCOL"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, "oath_protocol":I
    const-string v8, "OTP_LENGTH"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .local v12, "otp_len":I
    const-string v8, "OTP_ENCODING"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .local v13, "otp_encoding":I
    const-string v8, "OTP_PARAM"

    const-wide/16 v26, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .local v10, "otp_param":J
    const-string v8, "SECRET_ENCRYPTION_ALGO"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .local v17, "encryption_algo":I
    const-string v8, "SECRET_ENCRYPTION_KEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .local v15, "encryption_key":[B
    const-string v8, "SHARED_SECRET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .local v7, "shared_secret":[B
    const-string v8, "SECRET_ENCRYPTION_IV"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v18

    .local v18, "iv":[B
    const-string v8, "OCRA_SUITE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "ocra_suite":Ljava/lang/String;
    const-string v8, "TIME_DRIFT"

    const v16, 0x7fffffff

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .local v25, "time_drift":I
    const-string v8, "SECRET_ENCRYPTION_PASSWORD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .local v20, "pwd":[B
    const-string v8, "SECRET_ENCRYPTION_PBE_SALT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    .local v22, "salt":[B
    const-string v8, "SECRET_ENCRYPTION_PBE_ITERATION"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .local v24, "num_iteration":I
    const-string v8, "OTP_HASH_ALGO"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .local v9, "hash_algo":I
    const-string v8, "DSKPP_SERVER_ID"

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "serverId":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    or-int/lit8 v33, v33, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | oath_protocol = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v8, -0x1

    if-eq v12, v8, :cond_1

    or-int/lit8 v33, v33, 0x40

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | otp_len = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v8, -0x1

    if-eq v13, v8, :cond_2

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x80

    move/from16 v33, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | otp_encoding = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v26, -0x1

    cmp-long v8, v10, v26

    if-eqz v8, :cond_3

    or-int/lit8 v33, v33, 0x20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | otp_param = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_3
    const/4 v8, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_4

    or-int/lit8 v33, v33, 0x8

    const-string v8, "TlcHandler::otpResyncToken | encryption_algo added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | encryption_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    :cond_4
    if-eqz v15, :cond_5

    or-int/lit8 v33, v33, 0x4

    const-string v8, "TlcHandler::otpResyncToken | encryption_key added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | encryption_key = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    :cond_5
    if-eqz v7, :cond_6

    or-int/lit8 v33, v33, 0x2

    const-string v8, "TlcHandler::otpResyncToken | shared_secret added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | shared_secret = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    :cond_6
    if-eqz v18, :cond_7

    or-int/lit8 v33, v33, 0x10

    const-string v8, "TlcHandler::otpResyncToken | iv added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | iv = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    :cond_7
    if-eqz v14, :cond_d

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x100

    move/from16 v33, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | ocra_suite = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :goto_0
    const v8, 0x7fffffff

    move/from16 v0, v25

    if-eq v0, v8, :cond_8

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x1000

    move/from16 v33, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | time_drift = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_8
    if-eqz v20, :cond_9

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x200

    move/from16 v33, v0

    const-string v8, "TlcHandler::otpResyncToken | pwd added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | pwd = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    :cond_9
    if-eqz v22, :cond_a

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    const-string v8, "TlcHandler::otpResyncToken | salt added for resync"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | salt = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->byteToHex([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    :cond_a
    const/4 v8, -0x1

    move/from16 v0, v24

    if-eq v0, v8, :cond_b

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x800

    move/from16 v33, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | num_iteration = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_b
    const/4 v8, -0x1

    if-eq v9, v8, :cond_c

    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x2000

    move/from16 v33, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TlcHandler::otpResyncToken | hash_algo = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    const/16 v34, 0x4ff

    .local v34, "ret":I
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getLength([B)I

    move-result v23

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v5 .. v33}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeCreateToken(Ljava/lang/String;I[BIIJIILjava/lang/String;[BII[BI[BI[BIII[BILjava/lang/String;[BI[BII)I
    :try_end_1
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v34

    :goto_1
    monitor-exit p0

    return v34

    .end local v34    # "ret":I
    :cond_d
    :try_start_2
    new-instance v14, Ljava/lang/String;

    .end local v14    # "ocra_suite":Ljava/lang/String;
    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .restart local v14    # "ocra_suite":Ljava/lang/String;
    goto/16 :goto_0

    .restart local v34    # "ret":I
    :catch_0
    move-exception v4

    .local v4, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otpjni otpResyncToken::nativeCreateToken Exception : "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v34

    goto :goto_1

    .end local v4    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    .end local v5    # "token_id":Ljava/lang/String;
    .end local v6    # "oath_protocol":I
    .end local v7    # "shared_secret":[B
    .end local v9    # "hash_algo":I
    .end local v10    # "otp_param":J
    .end local v12    # "otp_len":I
    .end local v13    # "otp_encoding":I
    .end local v14    # "ocra_suite":Ljava/lang/String;
    .end local v15    # "encryption_key":[B
    .end local v17    # "encryption_algo":I
    .end local v18    # "iv":[B
    .end local v20    # "pwd":[B
    .end local v22    # "salt":[B
    .end local v24    # "num_iteration":I
    .end local v25    # "time_drift":I
    .end local v28    # "serverId":Ljava/lang/String;
    .end local v33    # "flags":I
    .end local v34    # "ret":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setDbHmacKey()I
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v6, "TlcHandler::setDbHmacKey - ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/16 v2, 0x20

    .local v2, "len":I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Random;-><init>(J)V

    .local v3, "r":Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v6, v2, :cond_0

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "len":I
    .end local v3    # "r":Ljava/util/Random;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v2    # "len":I
    .restart local v3    # "r":Ljava/util/Random;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v6, "TlcHandler::setDbHmacKey - key is  NULL"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x4ff

    :goto_1
    monitor-exit p0

    return v4

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TlcHandler::setDbHmacKey - key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x4ff

    .local v4, "ret":I
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeSetDbHmacData(Ljava/lang/String;II)I
    :try_end_3
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "otpjni nativeSetDbHmacData Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    goto :goto_1
.end method

.method public declared-synchronized setOtpDbHmac(Ljava/lang/String;)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    const/16 v1, 0x4ff

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/16 v1, 0x4ff

    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->nativeSetDbHmacData(Ljava/lang/String;II)I
    :try_end_0
    .catch Lcom/android/server/enterprise/otp/exceptions/OTPExceptions; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otpjni nativeSetDbHmacData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getException()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "ex":Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
