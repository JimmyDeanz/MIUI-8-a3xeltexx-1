.class public Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
.super Ljava/lang/Object;
.source "HotspotDMCertificateValidation.java"


# static fields
.field private static final CLIENT_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final GEN_NAMES_TAG:Ljava/lang/String; = "2"

.field private static final LOGO_TYPE_EXTN:Ljava/lang/String; = "1.3.6.1.5.5.7.1.12"

.field private static final TAG:Ljava/lang/String; = "HotspotDMCertificateValidation"


# instance fields
.field private HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

.field private OSU_SERVER:Ljava/lang/String;

.field private OTHER_NAME_TAG:I

.field private iconHash:Ljava/lang/String;

.field private mServerCertificate:[Ljava/security/cert/X509Certificate;

.field private mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;


# direct methods
.method public constructor <init>([Ljava/security/cert/X509Certificate;Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;)V
    .locals 1
    .param p1, "serverCertificate"    # [Ljava/security/cert/X509Certificate;
    .param p2, "validationParameters"    # Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "OSU"

    iput-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OSU_SERVER:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OTHER_NAME_TAG:I

    .line 59
    const-string v0, "1.3.6.1.4.1.40808.1.1.1"

    iput-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    .line 66
    iget-object v0, p2, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverUri:Ljava/lang/String;

    iput-object v0, p2, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    .line 68
    return-void
.end method

.method private filenameFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 495
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
    .line 415
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 417
    .local v1, "HashAlgAndValue":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v4, "HotspotDMCertificateValidation"

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

    .line 418
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 421
    .local v2, "hashAlg":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v4, "HotspotDMCertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hashAlg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 424
    .local v3, "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    const-string v4, "HotspotDMCertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hashValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 426
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 428
    .local v0, "AlgorithmIdentifier":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const-string v4, "HotspotDMCertificateValidation"

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

    .line 431
    return-object v3
.end method

.method private getHashSeqFromLogoTypeDetails(Lcom/android/org/bouncycastle/asn1/DERSequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .locals 8
    .param p1, "imageDetails"    # Lcom/android/org/bouncycastle/asn1/DERSequence;

    .prologue
    .line 441
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imageDetails:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 444
    .local v0, "enu":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .line 445
    .local v4, "mediaType":Lcom/android/org/bouncycastle/asn1/DERIA5String;
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mediaType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 448
    .local v1, "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logotypeHash:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 450
    .local v2, "logotypeURI":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logotypeURI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .line 455
    .local v3, "logotypeURIStr":Lcom/android/org/bouncycastle/asn1/DERIA5String;
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logotypeURIStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filename : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->filenameFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-object v1
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 295
    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 298
    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 299
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 300
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 295
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
    .line 499
    const/16 v18, 0x0

    .line 500
    .local v18, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->friendlyNames:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 501
    const/16 v22, 0x0

    .line 577
    :goto_0
    return v22

    .line 504
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v6

    .line 505
    .local v6, "c":Ljava/util/Collection;
    if-eqz v6, :cond_4

    .line 506
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 507
    .local v15, "it":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 508
    .local v4, "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const/4 v3, 0x0

    .line 509
    .local v3, "asn1Obj":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 510
    .local v9, "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const/4 v8, 0x0

    .line 511
    .local v8, "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v12, 0x0

    .line 512
    .local v12, "enu":Ljava/util/Enumeration;
    const/16 v16, 0x0

    .line 513
    .local v16, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v5, 0x0

    .line 514
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v10, 0x0

    .line 515
    .local v10, "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const/4 v7, 0x0

    .line 516
    .end local v3    # "asn1Obj":Ljava/lang/Object;
    .local v7, "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 517
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 518
    .local v14, "gn":Ljava/util/List;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OTHER_NAME_TAG:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 519
    .local v21, "tag":Ljava/lang/Integer;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-nez v22, :cond_1

    .line 520
    const-string v22, "HotspotDMCertificateValidation"

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

    .line 521
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

    .line 522
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 523
    .restart local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 524
    .local v3, "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const-string v22, "HotspotDMCertificateValidation"

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move-object v0, v3

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    move-object v9, v0

    .line 526
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    .end local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 527
    .restart local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v12

    .line 528
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v16

    .end local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    check-cast v16, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 530
    .restart local v16    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string v22, "HotspotDMCertificateValidation"

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

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 532
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    .end local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 534
    .restart local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 536
    instance-of v0, v7, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 537
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    move-object/from16 v20, v0

    .line 539
    .local v20, "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DERUTF8String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;->toString()Ljava/lang/String;

    move-result-object v19

    .line 545
    .end local v20    # "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DERUTF8String;
    .local v19, "spLangFriendlyName":Ljava/lang/String;
    :goto_2
    const-string v22, "HotspotDMCertificateValidation"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "language code and friendly name:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 550
    .local v17, "osuLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->friendlyNames:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 552
    .local v13, "friendlyName":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 553
    const-string v22, "HotspotDMCertificateValidation"

    const-string v23, "Language code match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v22, "HotspotDMCertificateValidation"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mvalidationParameters.friendlyName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 557
    const-string v22, "HotspotDMCertificateValidation"

    const-string v23, "OSU friendly name match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v18, 0x1

    .line 559
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    move/from16 v22, v18

    .line 560
    goto/16 :goto_0

    .line 541
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

    .line 543
    .local v20, "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "spLangFriendlyName":Ljava/lang/String;
    goto/16 :goto_2

    .line 562
    .end local v20    # "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .restart local v13    # "friendlyName":Ljava/lang/String;
    .restart local v17    # "osuLanguage":Ljava/lang/String;
    :cond_3
    const-string v22, "HotspotDMCertificateValidation"

    const-string v23, "OSU friendly name not match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 572
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

    .line 573
    .local v11, "e":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v11}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    .end local v11    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_4
    :goto_3
    move/from16 v22, v18

    .line 577
    goto/16 :goto_0

    .line 565
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
    const-string v22, "HotspotDMCertificateValidation"

    const-string v23, "Language code not match"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 574
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

    .line 575
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 570
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
    const-string v22, "HotspotDMCertificateValidation"

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
    .line 307
    const-string v25, "SHA256"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->getIconHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->iconHash:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->iconHash:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 310
    const/16 v24, 0x1

    .line 411
    :goto_0
    return v24

    .line 312
    :cond_0
    const/16 v24, 0x1

    .line 315
    .local v24, "result":Z
    :try_start_0
    const-string v25, "1.3.6.1.5.5.7.1.12"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v21

    .line 316
    .local v21, "logoType":[B
    if-eqz v21, :cond_6

    .line 317
    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 318
    .local v12, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 319
    .local v11, "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v14

    check-cast v14, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 320
    .local v14, "derObj":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v12

    .end local v12    # "bais":Ljava/io/ByteArrayInputStream;
    check-cast v12, Ljava/io/ByteArrayInputStream;

    .line 321
    .restart local v12    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 322
    .restart local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 323
    .local v22, "logoTypeExt":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 324
    const-string v25, "HotspotDMCertificateValidation"

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

    .line 325
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 326
    .local v7, "LogotypeExtnSequence":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 327
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 329
    .local v8, "LogotypeExtnTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string v25, "HotspotDMCertificateValidation"

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

    .line 330
    const-string v25, "HotspotDMCertificateValidation"

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

    .line 338
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v25

    if-nez v25, :cond_1

    .line 339
    const-string v25, "HotspotDMCertificateValidation"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 341
    .local v2, "CommunityLogos":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v25, "HotspotDMCertificateValidation"

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

    .line 343
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 344
    .local v3, "CommunityLogosEnu":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 345
    const/16 v24, 0x1

    .line 346
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 348
    .local v4, "CommunityLogosTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string v25, "HotspotDMCertificateValidation"

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

    .line 354
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v25

    if-nez v25, :cond_2

    .line 360
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 363
    .local v5, "LogotypeData":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v25, "HotspotDMCertificateValidation"

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

    .line 364
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 365
    .local v6, "LogotypeDataEnu":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 371
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 373
    .local v9, "LogotypeImage":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string v25, "HotspotDMCertificateValidation"

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

    .line 374
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v10

    .line 375
    .local v10, "LogotypeImageEnu":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 376
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 378
    .local v19, "imageDetails":Lcom/android/org/bouncycastle/asn1/DERSequence;
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 380
    .local v20, "imageInfo":Lcom/android/org/bouncycastle/asn1/DERSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->printImageInfo(Lcom/android/org/bouncycastle/asn1/DERSequence;)V

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->getHashSeqFromLogoTypeDetails(Lcom/android/org/bouncycastle/asn1/DERSequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v23

    .line 383
    .local v23, "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v16

    .line 384
    .local v16, "enu":Ljava/util/Enumeration;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->getHashFromSeq(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEROctetString;

    move-result-object v17

    .line 386
    .local v17, "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v18

    .line 387
    .local v18, "hashValueOctetString":[B
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 388
    .local v13, "certIconHash":Ljava/lang/String;
    const-string v25, "HotspotDMCertificateValidation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "hashValue String:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->iconHash:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 390
    const-string v25, "HotspotDMCertificateValidation"

    const-string v26, "Icon hash match"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 393
    :cond_4
    const-string v25, "HotspotDMCertificateValidation"

    const-string v26, "Icon hash not match"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v24, 0x0

    .line 395
    goto/16 :goto_1

    .line 403
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
    const-string v25, "HotspotDMCertificateValidation"

    const-string v26, "LogotypeExtn parsing done"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 406
    .end local v7    # "LogotypeExtnSequence":Ljava/util/Enumeration;
    .end local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v12    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "derObj":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v21    # "logoType":[B
    .end local v22    # "logoTypeExt":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v15

    .line 407
    .local v15, "e":Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 411
    .end local v15    # "e":Ljava/lang/SecurityException;
    :cond_6
    :goto_2
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 408
    :catch_1
    move-exception v15

    .line 409
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
    .line 71
    const-string v1, "HotspotDMCertificateValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "printCertProp:length of the certs :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    const-string v1, "HotspotDMCertificateValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "printCertProp:cert issuer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

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

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private printImageInfo(Lcom/android/org/bouncycastle/asn1/DERSequence;)V
    .locals 5
    .param p1, "imageInfo"    # Lcom/android/org/bouncycastle/asn1/DERSequence;

    .prologue
    .line 469
    const-string v2, "HotspotDMCertificateValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imageInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 471
    .local v0, "enu":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 473
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    const-string v2, "HotspotDMCertificateValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "object:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->printLanGuageCode(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V

    goto :goto_0

    .line 476
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :cond_0
    return-void
.end method

.method private printLanGuageCode(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V
    .locals 6
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .prologue
    .line 479
    instance-of v3, p1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 480
    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 481
    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .end local p1    # "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 482
    .local v1, "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    const/4 v2, 0x0

    .line 484
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

    .line 488
    :goto_0
    const-string v3, "HotspotDMCertificateValidation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imageInfo language code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v1    # "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v2    # "languageCode":Ljava/lang/String;
    :cond_0
    return-void

    .line 485
    .restart local v1    # "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .restart local v2    # "languageCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 486
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
    .line 166
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 167
    .local v0, "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 168
    .local v1, "attributeValidationFlag":Z
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, "extendedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "HotspotDMCertificateValidation"

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

    .line 170
    if-eqz v2, :cond_0

    .line 171
    const-string v3, "1.3.6.1.5.5.7.3.2"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    const-string v3, "HotspotDMCertificateValidation"

    const-string v4, "attributeValidation:It contains Clientauth attribute ABORT_OSU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 174
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
    .line 107
    const/4 v4, 0x1

    .line 109
    .local v4, "extendedValidationFlag":Z
    const/4 v7, 0x0

    :try_start_0
    aget-object v0, p1, v7

    .line 110
    .local v0, "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    .line 111
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    .line 112
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 113
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v5

    .line 114
    .local v5, "keyUsage":[Z
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    .line 116
    .local v6, "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 117
    .local v2, "SubjDnsType":Z
    invoke-virtual {p0, v5}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->keyUsageCheck([Z)Z

    .line 118
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 119
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:Subject-alt-name: "

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

    .line 121
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    .line 123
    .local v1, "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->subAltNameMatch(Ljava/util/Collection;)Z

    move-result v4

    .line 124
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-boolean v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->sim:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OSU_SERVER:Ljava/lang/String;

    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v8, v8, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 127
    invoke-direct {p0, v0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->isLanguageAndNamesMatched(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 129
    .end local v1    # "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_0
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:mvalidationParameters.serverType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v9, v9, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverType:Ljava/lang/String;

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

    .line 132
    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 133
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:noncritical_extensions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-boolean v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->sim:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OSU_SERVER:Ljava/lang/String;

    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v8, v8, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    const-string v7, "1.3.6.1.5.5.7.1.12"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 137
    invoke-direct {p0, v0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->isLogoTypeExtensionMatched(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 138
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:logoMatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    :goto_0
    const-string v7, "HotspotDMCertificateValidation"

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

    .line 146
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    if-eqz v4, :cond_2

    .line 147
    const/4 v4, 0x0

    .line 148
    const-string v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "rfc5280Validation:ServerRootCertificate version incorrect"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "SubjDnsType":Z
    .end local v5    # "keyUsage":[Z
    .end local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:final rfc5280ValidationFlag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v4

    .line 140
    .restart local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .restart local v2    # "SubjDnsType":Z
    .restart local v5    # "keyUsage":[Z
    .restart local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v4, 0x0

    .line 141
    :try_start_1
    const-string v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "rfc5280Validation:Cert doesnt contain Logotype  extension"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "SubjDnsType":Z
    .end local v5    # "keyUsage":[Z
    .end local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "rfc5280Validation:Certificate validation failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
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
    .line 256
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 257
    .local v1, "IconBytes":[B
    const/4 v3, 0x0

    .line 258
    .local v3, "bytesRead":I
    const/4 v7, 0x0

    .line 259
    .local v7, "icon_file":Ljava/io/File;
    const/4 v5, 0x0

    .line 260
    .local v5, "hexString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 262
    .local v9, "icon_stream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v11, v11, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->iconPath:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 263
    new-instance v8, Ljava/io/File;

    const-string v11, "/data/hs20/icons/"

    iget-object v12, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v12, v12, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->iconPath:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v7    # "icon_file":Ljava/io/File;
    .local v8, "icon_file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_1

    .line 266
    const/4 v11, 0x0

    .line 284
    if-eqz v9, :cond_0

    .line 285
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v7, v8

    .line 291
    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v7    # "icon_file":Ljava/io/File;
    :goto_1
    return-object v11

    .line 287
    .end local v7    # "icon_file":Ljava/io/File;
    .restart local v8    # "icon_file":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 288
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 268
    .local v6, "iconDigest":Ljava/security/MessageDigest;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    .local v0, "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    .end local v9    # "icon_stream":Ljava/io/FileInputStream;
    .local v10, "icon_stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v10, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_3

    .line 271
    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 279
    :catch_1
    move-exception v4

    move-object v9, v10

    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v9    # "icon_stream":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 280
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "iconDigest":Ljava/security/MessageDigest;
    .end local v8    # "icon_file":Ljava/io/File;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "icon_file":Ljava/io/File;
    :goto_3
    :try_start_5
    const-string v11, "HotspotDMCertificateValidation"

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

    .line 281
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    if-eqz v9, :cond_2

    .line 285
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    move-object v11, v5

    .line 291
    goto :goto_1

    .line 273
    .end local v7    # "icon_file":Ljava/io/File;
    .end local v9    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "iconDigest":Ljava/security/MessageDigest;
    .restart local v8    # "icon_file":Ljava/io/File;
    .restart local v10    # "icon_stream":Ljava/io/FileInputStream;
    :cond_3
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 274
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 275
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 276
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 277
    .local v2, "bytes":[B
    invoke-static {v2}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->hexify([B)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v5

    move-object v9, v10

    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v9    # "icon_stream":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 284
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v6    # "iconDigest":Ljava/security/MessageDigest;
    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v7    # "icon_file":Ljava/io/File;
    :cond_4
    if-eqz v9, :cond_2

    .line 285
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 287
    :catch_2
    move-exception v4

    .line 288
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 287
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 288
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 283
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 284
    :goto_5
    if-eqz v9, :cond_5

    .line 285
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 289
    :cond_5
    :goto_6
    throw v11

    .line 287
    :catch_4
    move-exception v4

    .line 288
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 283
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

    .line 279
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
    .line 220
    const/4 v0, 0x1

    .line 221
    .local v0, "keyUsageValidationFlag":Z
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "HotspotDMCertificateValidation"

    const-string/jumbo v2, "keyUsageCheck;have both encipherment and signing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 225
    const-string v1, "HotspotDMCertificateValidation"

    const-string/jumbo v2, "keyUsageCheck:either of encipherment and signing is missing"

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
    .line 180
    .local p1, "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const-string v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "subAltNameMatch:"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v6, 0x1

    .line 182
    .local v6, "subAltMatchFlag":Z
    const/4 v5, 0x0

    .line 183
    .local v5, "mserverUri":Ljava/net/URI;
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverUri:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 184
    new-instance v5, Ljava/net/URI;

    .end local v5    # "mserverUri":Ljava/net/URI;
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverUri:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v5    # "mserverUri":Ljava/net/URI;
    const/4 v3, 0x0

    .line 190
    .local v3, "genNames":Ljava/lang/String;
    const/4 v4, 0x0

    .line 191
    .local v4, "match":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    .local v0, "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:genNames "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v7, "2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "dnsName":Ljava/lang/String;
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:dnsName from certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    const/4 v4, 0x1

    .line 202
    const/4 v6, 0x1

    .line 203
    const-string v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "subAltNameMatch:Domain Name or UrlWnmframe is suffix match for subject at name"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .end local v2    # "dnsName":Ljava/lang/String;
    .end local v3    # "genNames":Ljava/lang/String;
    .end local v4    # "match":Z
    :cond_2
    const-string v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "subAltNameMatch:server uri is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v7, 0x0

    .line 216
    :goto_1
    return v7

    .line 206
    .restart local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v1    # "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .restart local v2    # "dnsName":Ljava/lang/String;
    .restart local v3    # "genNames":Ljava/lang/String;
    .restart local v4    # "match":Z
    :cond_3
    const/4 v6, 0x0

    .line 207
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:dnsName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:mserverUri.getHost() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "subAltNameMatch:Domain Name or UrlWnmframe is not suffix match for subject at name"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "dnsName":Ljava/lang/String;
    :cond_4
    const-string v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:rfcflag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 216
    goto :goto_1
.end method

.method public subCnMatch(Ljava/security/cert/X509Certificate;)Z
    .locals 8
    .param p1, "ServerRootCertificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 231
    const/4 v3, 0x1

    .line 232
    .local v3, "rfc5280ValidationFlag":Z
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 233
    .local v2, "principal":Ljavax/security/auth/x500/X500Principal;
    const/4 v4, 0x0

    .line 234
    .local v4, "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    const/4 v0, 0x0

    .line 235
    .local v0, "CN":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 236
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .end local v4    # "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v4    # "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 238
    .local v1, "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v5, v5, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v5, v5, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 242
    const-string v5, "HotspotDMCertificateValidation"

    const-string/jumbo v6, "subCnMatch:fqdnName is suffix match for  CN portion subject names"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v1    # "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_1
    :goto_0
    return v3

    .line 244
    .restart local v1    # "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_2
    const/4 v3, 0x0

    .line 245
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subCnMatch:Comman name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subCnMatch:mvalidationParameters.fqdnName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v5, "HotspotDMCertificateValidation"

    const-string/jumbo v6, "subCnMatch:mvalidationParameters.fqdnName is Not suffix  match for subject names"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public validate()Z
    .locals 4

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "validationFlag":Z
    const-string v2, "HotspotDMCertificateValidation"

    const-string/jumbo v3, "validate:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->printCertProp()V

    .line 83
    iget-object v2, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->extendedValidation([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->attributeValidation([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 95
    :goto_1
    return v2

    .line 87
    :cond_0
    const-string v2, "HotspotDMCertificateValidation"

    const-string/jumbo v3, "validate: attributeValidation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const/4 v2, 0x0

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "HotspotDMCertificateValidation"

    const-string/jumbo v3, "validate: rfc5280Validation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
