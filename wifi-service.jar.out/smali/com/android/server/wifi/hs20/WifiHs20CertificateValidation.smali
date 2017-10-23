.class public Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;
.super Ljava/lang/Object;
.source "WifiHs20CertificateValidation.java"


# static fields
.field private static final CLIENT_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final GEN_NAMES_TAG:Ljava/lang/String; = "2"

.field private static final HS20_FRIENDLY_NAME_OID:Ljava/lang/String; = "1.3.6.1.4.1.40808.1.1.1"

.field private static final LOGO_TYPE_EXTN:Ljava/lang/String; = "1.3.6.1.5.5.7.1.12"

.field private static final TAG:Ljava/lang/String; = "HS20CertificateValidation"


# instance fields
.field private HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

.field private OSU_SERVER:Ljava/lang/String;

.field private OTHER_NAME_TAG:I

.field private iconHash:Ljava/lang/String;

.field private mServerCertificate:[Ljava/security/cert/X509Certificate;

.field private mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;


# direct methods
.method public constructor <init>([Ljava/security/cert/X509Certificate;Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;)V
    .locals 1
    .param p1, "serverCertificate"    # [Ljava/security/cert/X509Certificate;
    .param p2, "validationParameters"    # Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "OSU"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->OSU_SERVER:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->OTHER_NAME_TAG:I

    .line 61
    const-string v0, "1.3.6.1.4.1.40808.1.1.1"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    .line 68
    iget-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->fqdnName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    .line 70
    return-void
.end method

.method private filenameFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHashFromSeq(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .locals 7
    .param p1, "enu"    # Ljava/util/Enumeration;

    .prologue
    .line 420
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 422
    .local v1, "HashAlgAndValue":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v4, "HS20CertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HashAlgAndValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 424
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 425
    .local v2, "hashAlg":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v4, "HS20CertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hashAlg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 428
    .local v3, "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    const-string v4, "HS20CertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hashValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 430
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 432
    .local v0, "AlgorithmIdentifier":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const-string v4, "HS20CertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlgorithmIdentifier:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v3
.end method

.method private getHashSeqFromLogoTypeDetails(Lcom/android/org/bouncycastle/asn1/DERSequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .locals 8
    .param p1, "imageDetails"    # Lcom/android/org/bouncycastle/asn1/DERSequence;

    .prologue
    .line 443
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imageDetails:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 446
    .local v0, "enu":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .line 447
    .local v4, "mediaType":Lcom/android/org/bouncycastle/asn1/DERIA5String;
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 450
    .local v1, "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logotypeHash:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 452
    .local v2, "logotypeURI":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logotypeURI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .line 457
    .local v3, "logotypeURIStr":Lcom/android/org/bouncycastle/asn1/DERIA5String;
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logotypeURIStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filename : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->filenameFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-object v1
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 296
    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 299
    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 300
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 301
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 296
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private isLanguageAndNamesMatched(Ljava/security/cert/X509Certificate;)Z
    .locals 25
    .param p1, "x509Cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 500
    const/16 v18, 0x0

    .line 501
    .local v18, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->friendlyNames:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 502
    const/16 v22, 0x0

    .line 578
    :goto_0
    return v22

    .line 505
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v6

    .line 506
    .local v6, "c":Ljava/util/Collection;
    if-eqz v6, :cond_4

    .line 507
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 508
    .local v15, "it":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 509
    .local v4, "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const/4 v3, 0x0

    .line 510
    .local v3, "asn1Obj":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 511
    .local v9, "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const/4 v8, 0x0

    .line 512
    .local v8, "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v12, 0x0

    .line 513
    .local v12, "enu":Ljava/util/Enumeration;
    const/16 v16, 0x0

    .line 514
    .local v16, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v5, 0x0

    .line 515
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v10, 0x0

    .line 516
    .local v10, "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const/4 v7, 0x0

    .line 517
    .end local v3    # "asn1Obj":Ljava/lang/Object;
    .local v7, "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 518
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 519
    .local v14, "gn":Ljava/util/List;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->OTHER_NAME_TAG:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 520
    .local v21, "tag":Ljava/lang/Integer;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-nez v22, :cond_1

    .line 521
    const-string v22, "HS20CertificateValidation"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SubjectAltName OtherName:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 523
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 524
    .restart local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 525
    .local v3, "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const-string v22, "HS20CertificateValidation"

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move-object v0, v3

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    move-object v9, v0

    .line 527
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    .end local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 528
    .restart local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v12

    .line 529
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v16

    .end local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    check-cast v16, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 531
    .restart local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string v22, "HS20CertificateValidation"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    OID:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 533
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    .end local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 535
    .restart local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 537
    instance-of v0, v7, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 538
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    move-object/from16 v20, v0

    .line 540
    .local v20, "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DERUTF8String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;->toString()Ljava/lang/String;

    move-result-object v19

    .line 546
    .end local v20    # "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DERUTF8String;
    .local v19, "spLangFriendlyName":Ljava/lang/String;
    :goto_2
    const-string v22, "HS20CertificateValidation"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "language code and friendly name:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 551
    .local v17, "osuLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->friendlyNames:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 553
    .local v13, "friendlyName":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 554
    const-string v22, "HS20CertificateValidation"

    const-string v23, "Language code match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v22, "HS20CertificateValidation"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mvalidationParameters.friendlyName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 558
    const-string v22, "HS20CertificateValidation"

    const-string v23, "OSU friendly name match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v18, 0x1

    .line 560
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    move/from16 v22, v18

    .line 561
    goto/16 :goto_0

    .line 542
    .end local v13    # "friendlyName":Ljava/lang/String;
    .end local v17    # "osuLanguage":Ljava/lang/String;
    .end local v19    # "spLangFriendlyName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    move-object/from16 v20, v0

    .line 544
    .local v20, "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "spLangFriendlyName":Ljava/lang/String;
    goto/16 :goto_2

    .line 563
    .end local v20    # "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .restart local v13    # "friendlyName":Ljava/lang/String;
    .restart local v17    # "osuLanguage":Ljava/lang/String;
    :cond_3
    const-string v22, "HS20CertificateValidation"

    const-string v23, "OSU friendly name not match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 573
    .end local v3    # "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "c":Ljava/util/Collection;
    .end local v7    # "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .end local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v12    # "enu":Ljava/util/Enumeration;
    .end local v13    # "friendlyName":Ljava/lang/String;
    .end local v14    # "gn":Ljava/util/List;
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v17    # "osuLanguage":Ljava/lang/String;
    .end local v19    # "spLangFriendlyName":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/Integer;
    :catch_0
    move-exception v11

    .line 574
    .local v11, "e":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v11}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    .end local v11    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_4
    :goto_3
    move/from16 v22, v18

    .line 578
    goto/16 :goto_0

    .line 566
    .restart local v3    # "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "c":Ljava/util/Collection;
    .restart local v7    # "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .restart local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v12    # "enu":Ljava/util/Enumeration;
    .restart local v13    # "friendlyName":Ljava/lang/String;
    .restart local v14    # "gn":Ljava/util/List;
    .restart local v15    # "it":Ljava/util/Iterator;
    .restart local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v17    # "osuLanguage":Ljava/lang/String;
    .restart local v19    # "spLangFriendlyName":Ljava/lang/String;
    .restart local v21    # "tag":Ljava/lang/Integer;
    :cond_5
    :try_start_1
    const-string v22, "HS20CertificateValidation"

    const-string v23, "Language code not match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 575
    .end local v3    # "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "c":Ljava/util/Collection;
    .end local v7    # "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .end local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v12    # "enu":Ljava/util/Enumeration;
    .end local v13    # "friendlyName":Ljava/lang/String;
    .end local v14    # "gn":Ljava/util/List;
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v17    # "osuLanguage":Ljava/lang/String;
    .end local v19    # "spLangFriendlyName":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/Integer;
    :catch_1
    move-exception v11

    .line 576
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 571
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "c":Ljava/util/Collection;
    .restart local v7    # "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .restart local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v12    # "enu":Ljava/util/Enumeration;
    .restart local v15    # "it":Ljava/util/Iterator;
    .restart local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_6
    :try_start_2
    const-string v22, "HS20CertificateValidation"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Subject Alternative Names:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method private isLogoTypeExtensionMatched(Ljava/security/cert/X509Certificate;)Z
    .locals 28
    .param p1, "x509Cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    const-string v25, "SHA256"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->getIconHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->iconHash:Ljava/lang/String;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->iconHash:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 311
    const/16 v24, 0x1

    .line 416
    :goto_0
    return v24

    .line 313
    :cond_0
    const/16 v24, 0x1

    .line 316
    .local v24, "result":Z
    :try_start_0
    const-string v25, "1.3.6.1.5.5.7.1.12"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v21

    .line 317
    .local v21, "logoType":[B
    if-eqz v21, :cond_6

    .line 318
    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 319
    .local v12, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 320
    .local v11, "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v14

    check-cast v14, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 321
    .local v14, "derObj":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v12

    .end local v12    # "bais":Ljava/io/ByteArrayInputStream;
    check-cast v12, Ljava/io/ByteArrayInputStream;

    .line 322
    .restart local v12    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 323
    .restart local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 324
    .local v22, "logoTypeExt":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 325
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LogotypeExtn:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 327
    .local v7, "LogotypeExtnSequence":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 328
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 330
    .local v8, "LogotypeExtnTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LogotypeExtnTaggedObj:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LogotypeExtnTaggedObj CHOICE: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v25

    if-nez v25, :cond_1

    .line 340
    const-string v25, "HS20CertificateValidation"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 342
    .local v2, "CommunityLogos":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "communityLogos:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 345
    .local v3, "CommunityLogosEnu":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 346
    const/16 v24, 0x1

    .line 347
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 349
    .local v4, "CommunityLogosTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CommunityLogosTaggedObj CHOICE: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v25

    if-nez v25, :cond_2

    .line 362
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 365
    .local v5, "LogotypeData":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LogotypeImage:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 367
    .local v6, "LogotypeDataEnu":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 373
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 375
    .local v9, "LogotypeImage":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LogotypeImage:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v10

    .line 377
    .local v10, "LogotypeImageEnu":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 378
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 380
    .local v19, "imageDetails":Lcom/android/org/bouncycastle/asn1/DERSequence;
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 382
    .local v20, "imageInfo":Lcom/android/org/bouncycastle/asn1/DERSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->printImageInfo(Lcom/android/org/bouncycastle/asn1/DERSequence;)V

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->getHashSeqFromLogoTypeDetails(Lcom/android/org/bouncycastle/asn1/DERSequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v23

    .line 385
    .local v23, "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v16

    .line 386
    .local v16, "enu":Ljava/util/Enumeration;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->getHashFromSeq(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEROctetString;

    move-result-object v17

    .line 388
    .local v17, "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v18

    .line 389
    .local v18, "hashValueOctetString":[B
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "hashValueOctetString:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 393
    .local v13, "certIconHash":Ljava/lang/String;
    const-string v25, "HS20CertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "hashValue String:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->iconHash:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 395
    const-string v25, "HS20CertificateValidation"

    const-string v26, "Icon hash match"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 398
    :cond_4
    const-string v25, "HS20CertificateValidation"

    const-string v26, "Icon hash not match"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v24, 0x0

    .line 400
    goto/16 :goto_1

    .line 408
    .end local v2    # "CommunityLogos":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v3    # "CommunityLogosEnu":Ljava/util/Enumeration;
    .end local v4    # "CommunityLogosTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v5    # "LogotypeData":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v6    # "LogotypeDataEnu":Ljava/util/Enumeration;
    .end local v8    # "LogotypeExtnTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v9    # "LogotypeImage":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v10    # "LogotypeImageEnu":Ljava/util/Enumeration;
    .end local v13    # "certIconHash":Ljava/lang/String;
    .end local v16    # "enu":Ljava/util/Enumeration;
    .end local v17    # "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v18    # "hashValueOctetString":[B
    .end local v19    # "imageDetails":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v20    # "imageInfo":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v23    # "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    :cond_5
    const-string v25, "HS20CertificateValidation"

    const-string v26, "LogotypeExtn parsing done"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 411
    .end local v7    # "LogotypeExtnSequence":Ljava/util/Enumeration;
    .end local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v12    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "derObj":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v21    # "logoType":[B
    .end local v22    # "logoTypeExt":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v15

    .line 412
    .local v15, "e":Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 416
    .end local v15    # "e":Ljava/lang/SecurityException;
    :cond_6
    :goto_2
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 413
    :catch_1
    move-exception v15

    .line 414
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private printCertProp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    const-string v1, "HS20CertificateValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printCertProp:length of the certs :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 75
    const-string v1, "HS20CertificateValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printCertProp:cert issuer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private printImageInfo(Lcom/android/org/bouncycastle/asn1/DERSequence;)V
    .locals 5
    .param p1, "imageInfo"    # Lcom/android/org/bouncycastle/asn1/DERSequence;

    .prologue
    .line 471
    const-string v2, "HS20CertificateValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 473
    .local v0, "enu":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 475
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    const-string v2, "HS20CertificateValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->printLanGuageCode(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V

    goto :goto_0

    .line 478
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :cond_0
    return-void
.end method

.method private printLanGuageCode(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V
    .locals 6
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .prologue
    .line 481
    instance-of v3, p1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 482
    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 483
    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .end local p1    # "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 484
    .local v1, "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    const/4 v2, 0x0

    .line 486
    .local v2, "languageCode":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 490
    :goto_0
    const-string v3, "HS20CertificateValidation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageInfo language code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v1    # "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v2    # "languageCode":Ljava/lang/String;
    :cond_0
    return-void

    .line 487
    .restart local v1    # "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .restart local v2    # "languageCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public attributeValidation([Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "mServerCertificate"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 168
    .local v0, "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 169
    .local v1, "attributeValidationFlag":Z
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    .line 170
    .local v2, "extendedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "HS20CertificateValidation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attributeValidation:extendedKeys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v2, :cond_0

    .line 172
    const-string v3, "1.3.6.1.5.5.7.3.2"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const-string v3, "HS20CertificateValidation"

    const-string v4, "attributeValidation:It contains Clientauth attribute ABORT_OSU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public extendedValidation([Ljava/security/cert/X509Certificate;)Z
    .locals 10
    .param p1, "mServerCertificate"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v4, 0x1

    .line 110
    .local v4, "extendedValidationFlag":Z
    const/4 v7, 0x0

    :try_start_0
    aget-object v0, p1, v7

    .line 111
    .local v0, "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    .line 112
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    .line 113
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 114
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v5

    .line 115
    .local v5, "keyUsage":[Z
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    .line 117
    .local v6, "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 118
    .local v2, "SubjDnsType":Z
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->keyUsageCheck([Z)Z

    .line 119
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 120
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rfc5280Validation:Subject-alt-name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    .line 124
    .local v1, "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->subAltNameMatch(Ljava/util/Collection;)Z

    move-result v4

    .line 125
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-boolean v7, v7, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->sim:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->OSU_SERVER:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v8, v8, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 128
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->isLanguageAndNamesMatched(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 130
    .end local v1    # "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_0
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rfc5280Validation:mvalidationParameters.serverType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v9, v9, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SubjDnsType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rfc5280ValidationFlag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 134
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rfc5280Validation:noncritical_extensions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-boolean v7, v7, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->sim:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->OSU_SERVER:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v8, v8, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    const-string v7, "1.3.6.1.5.5.7.1.12"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 139
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->isLogoTypeExtensionMatched(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 140
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rfc5280Validation:logoMatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :goto_0
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "certificate_version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    if-eqz v4, :cond_2

    .line 149
    const/4 v4, 0x0

    .line 150
    const-string v7, "HS20CertificateValidation"

    const-string v8, "rfc5280Validation:ServerRootCertificate version incorrect"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "SubjDnsType":Z
    .end local v5    # "keyUsage":[Z
    .end local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rfc5280Validation:final rfc5280ValidationFlag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v4

    .line 142
    .restart local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .restart local v2    # "SubjDnsType":Z
    .restart local v5    # "keyUsage":[Z
    .restart local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v4, 0x0

    .line 143
    :try_start_1
    const-string v7, "HS20CertificateValidation"

    const-string v8, "rfc5280Validation:Cert doesnt contain Logotype  extension"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 152
    .end local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "SubjDnsType":Z
    .end local v5    # "keyUsage":[Z
    .end local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "HS20CertificateValidation"

    const-string v8, "rfc5280Validation:Certificate validation failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getIconHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "algoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 258
    .local v1, "IconBytes":[B
    const/4 v3, 0x0

    .line 259
    .local v3, "bytesRead":I
    const/4 v7, 0x0

    .line 260
    .local v7, "icon_file":Ljava/io/File;
    const/4 v5, 0x0

    .line 261
    .local v5, "hexString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 263
    .local v9, "icon_stream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v11, v11, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->iconPath:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 264
    new-instance v8, Ljava/io/File;

    const-string v11, "/data/hs20/icons/"

    iget-object v12, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->iconPath:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v7    # "icon_file":Ljava/io/File;
    .local v8, "icon_file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_1

    .line 267
    const/4 v11, 0x0

    .line 285
    if-eqz v9, :cond_0

    .line 286
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v7, v8

    .line 292
    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v7    # "icon_file":Ljava/io/File;
    :goto_1
    return-object v11

    .line 288
    .end local v7    # "icon_file":Ljava/io/File;
    .restart local v8    # "icon_file":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 289
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 269
    .local v6, "iconDigest":Ljava/security/MessageDigest;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 270
    .local v0, "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    .end local v9    # "icon_stream":Ljava/io/FileInputStream;
    .local v10, "icon_stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v10, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_3

    .line 272
    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 280
    :catch_1
    move-exception v4

    move-object v9, v10

    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v9    # "icon_stream":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 281
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "iconDigest":Ljava/security/MessageDigest;
    .end local v8    # "icon_file":Ljava/io/File;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "icon_file":Ljava/io/File;
    :goto_3
    :try_start_5
    const-string v11, "HS20CertificateValidation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getIconHash:exception occured:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    if-eqz v9, :cond_2

    .line 286
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    move-object v11, v5

    .line 292
    goto :goto_1

    .line 274
    .end local v7    # "icon_file":Ljava/io/File;
    .end local v9    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "iconDigest":Ljava/security/MessageDigest;
    .restart local v8    # "icon_file":Ljava/io/File;
    .restart local v10    # "icon_stream":Ljava/io/FileInputStream;
    :cond_3
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 275
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 276
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 277
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 278
    .local v2, "bytes":[B
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->hexify([B)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v5

    move-object v9, v10

    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v9    # "icon_stream":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 285
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v6    # "iconDigest":Ljava/security/MessageDigest;
    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v7    # "icon_file":Ljava/io/File;
    :cond_4
    if-eqz v9, :cond_2

    .line 286
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 288
    :catch_2
    move-exception v4

    .line 289
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 288
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 289
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 284
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 285
    :goto_5
    if-eqz v9, :cond_5

    .line 286
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 290
    :cond_5
    :goto_6
    throw v11

    .line 288
    :catch_4
    move-exception v4

    .line 289
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 284
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "icon_file":Ljava/io/File;
    .restart local v8    # "icon_file":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v7    # "icon_file":Ljava/io/File;
    goto :goto_5

    .end local v7    # "icon_file":Ljava/io/File;
    .end local v9    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "iconDigest":Ljava/security/MessageDigest;
    .restart local v8    # "icon_file":Ljava/io/File;
    .restart local v10    # "icon_stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v9    # "icon_stream":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v7    # "icon_file":Ljava/io/File;
    goto :goto_5

    .line 280
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "iconDigest":Ljava/security/MessageDigest;
    :catch_5
    move-exception v4

    goto :goto_3

    .end local v7    # "icon_file":Ljava/io/File;
    .restart local v8    # "icon_file":Ljava/io/File;
    :catch_6
    move-exception v4

    move-object v7, v8

    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v7    # "icon_file":Ljava/io/File;
    goto :goto_3
.end method

.method public keyUsageCheck([Z)Z
    .locals 3
    .param p1, "keyUsage"    # [Z

    .prologue
    .line 221
    const/4 v0, 0x1

    .line 222
    .local v0, "keyUsageValidationFlag":Z
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "HS20CertificateValidation"

    const-string v2, "keyUsageCheck;have both encipherment and signing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 226
    const-string v1, "HS20CertificateValidation"

    const-string v2, "keyUsageCheck:either of encipherment and signing is missing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public subAltNameMatch(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const-string v7, "HS20CertificateValidation"

    const-string v8, "subAltNameMatch:"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v6, 0x1

    .line 183
    .local v6, "subAltMatchFlag":Z
    const/4 v5, 0x0

    .line 184
    .local v5, "mserverUri":Ljava/net/URI;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v7, v7, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 185
    new-instance v5, Ljava/net/URI;

    .end local v5    # "mserverUri":Ljava/net/URI;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v7, v7, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v5    # "mserverUri":Ljava/net/URI;
    const/4 v3, 0x0

    .line 191
    .local v3, "genNames":Ljava/lang/String;
    const/4 v4, 0x0

    .line 192
    .local v4, "match":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .local v1, "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    .local v0, "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subAltNameMatch:genNames "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v7, "2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "dnsName":Ljava/lang/String;
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subAltNameMatch:dnsName from certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    const/4 v4, 0x1

    .line 203
    const/4 v6, 0x1

    .line 204
    const-string v7, "HS20CertificateValidation"

    const-string v8, "subAltNameMatch:Domain Name or UrlWnmframe is suffix match for subject at name"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .end local v2    # "dnsName":Ljava/lang/String;
    .end local v3    # "genNames":Ljava/lang/String;
    .end local v4    # "match":Z
    :cond_2
    const-string v7, "HS20CertificateValidation"

    const-string v8, "subAltNameMatch:server uri is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v7, 0x0

    .line 217
    :goto_1
    return v7

    .line 207
    .restart local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v1    # "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .restart local v2    # "dnsName":Ljava/lang/String;
    .restart local v3    # "genNames":Ljava/lang/String;
    .restart local v4    # "match":Z
    :cond_3
    const/4 v6, 0x0

    .line 208
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subAltNameMatch:dnsName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subAltNameMatch:mserverUri.getHost() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v7, "HS20CertificateValidation"

    const-string v8, "subAltNameMatch:Domain Name or UrlWnmframe is not suffix match for subject at name"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .end local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "dnsName":Ljava/lang/String;
    :cond_4
    const-string v7, "HS20CertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subAltNameMatch:rfcflag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 217
    goto :goto_1
.end method

.method public subCnMatch(Ljava/security/cert/X509Certificate;)Z
    .locals 8
    .param p1, "ServerRootCertificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 232
    const/4 v3, 0x1

    .line 233
    .local v3, "rfc5280ValidationFlag":Z
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 234
    .local v2, "principal":Ljavax/security/auth/x500/X500Principal;
    const/4 v4, 0x0

    .line 235
    .local v4, "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    const/4 v0, 0x0

    .line 236
    .local v0, "CN":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 237
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .end local v4    # "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v4    # "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 239
    .local v1, "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->fqdnName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->fqdnName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 243
    const-string v5, "HS20CertificateValidation"

    const-string v6, "subCnMatch:fqdnName is suffix match for  CN portion subject names"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v1    # "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_1
    :goto_0
    return v3

    .line 245
    .restart local v1    # "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_2
    const/4 v3, 0x0

    .line 246
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subCnMatch:Comman name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v5, "HS20CertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subCnMatch:mvalidationParameters.fqdnName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mvalidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    iget-object v7, v7, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->fqdnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v5, "HS20CertificateValidation"

    const-string v6, "subCnMatch:mvalidationParameters.fqdnName is Not suffix  match for subject names"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public validate()Z
    .locals 4

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "validationFlag":Z
    const-string v2, "HS20CertificateValidation"

    const-string v3, "validate:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->printCertProp()V

    .line 85
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->extendedValidation([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateValidation;->attributeValidation([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 97
    :goto_1
    return v2

    .line 89
    :cond_0
    const-string v2, "HS20CertificateValidation"

    const-string v3, "validate: attributeValidation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v2, 0x0

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "HS20CertificateValidation"

    const-string v3, "validate: rfc5280Validation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
