.class final Landroid/net/wifi/WifiEnterpriseConfig$1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiEnterpriseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_0

    :try_start_0
    new-array v0, v4, [B

    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .local v1, "cFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bytes":[B
    .end local v1    # "cFactory":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    :goto_0
    return-object v2

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/security/cert/CertificateException;
    const/4 v2, 0x0

    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "value":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->access$000(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v14

    # setter for: Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;
    invoke-static {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->access$102(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    const/4 v12, 0x0

    .local v12, "userKey":Ljava/security/PrivateKey;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "len":I
    if-lez v11, :cond_1

    :try_start_0
    new-array v2, v11, [B

    .local v2, "bytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "algorithm":Ljava/lang/String;
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    .local v10, "keyFactory":Ljava/security/KeyFactory;
    new-instance v14, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v14, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v10, v14}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v10    # "keyFactory":Ljava/security/KeyFactory;
    :cond_1
    :goto_1
    # setter for: Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;
    invoke-static {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->access$202(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v14

    # setter for: Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;
    invoke-static {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->access$302(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_2
    # setter for: Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z
    invoke-static {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->access$402(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z

    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v14

    # setter for: Landroid/net/wifi/WifiEnterpriseConfig;->mwapiASCert:Ljava/security/cert/X509Certificate;
    invoke-static {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->access$502(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v14

    # setter for: Landroid/net/wifi/WifiEnterpriseConfig;->mwapiUserCert:Ljava/security/cert/X509Certificate;
    invoke-static {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->access$602(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "isCCMEnabled":I
    const/4 v14, 0x1

    if-ne v7, v14, :cond_2

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "isUCMEnabled":I
    const/4 v14, 0x1

    if-ne v8, v14, :cond_3

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    :cond_3
    return-object v5

    .end local v7    # "isCCMEnabled":I
    .end local v8    # "isUCMEnabled":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v12, 0x0

    goto :goto_1

    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/security/spec/InvalidKeySpecException;
    const/4 v12, 0x0

    goto :goto_1

    .end local v4    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method
