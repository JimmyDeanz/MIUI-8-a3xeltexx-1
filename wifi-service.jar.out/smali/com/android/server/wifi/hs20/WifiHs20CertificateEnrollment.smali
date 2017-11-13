.class public Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;
.super Ljava/lang/Object;
.source "WifiHs20CertificateEnrollment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final DEV_OID:Ljava/lang/String; = "1.3.6.1.4.1.40808.1.1.5"

.field private static final ECCDA_WITH_SHA384_OID:Ljava/lang/String; = "1.2.840.10045.4.3.3"

.field private static final EST_ATTR_CONTENT_TYPE:Ljava/lang/CharSequence;

.field private static final EST_CONTENT_TYPE:Ljava/lang/String; = "application/pkcs7-mime"

.field private static final HS20_EKU:Ljava/lang/String; = "1.3.6.1.4.1.40808.1.1.2"

.field private static final IMEI_OID:Ljava/lang/String; = "1.3.6.1.4.1.40808.1.1.3"

.field private static final MAC_OID:Ljava/lang/String; = "1.3.6.1.1.1.1.22"

.field private static final MAX_CERT_LENGTH:I = 0x2800

.field private static final MAX_SEQ_LENGTH:I = 0x400

.field private static final MEI_OID:Ljava/lang/String; = "1.3.6.1.4.1.40808.1.1.4"

.field private static final SERIAL_NO_OID:Ljava/lang/String; = "2.5.4.5"

.field private static final SHA256_WITH_RSA_ENCRYPTION_OID:Ljava/lang/String; = "1.2.840.113549.1.1.11"

.field private static final TAG:Ljava/lang/String; = "HS20CertificateEnrollment"

.field private static final TEMP_ATTR_PATH:Ljava/lang/String;

.field private static final TEMP_SERVER_CERT_PATH:Ljava/lang/String;

.field private static csrDir:Ljava/io/File;


# instance fields
.field private HS20_KEYSTORE_FILENAME:Ljava/lang/String;

.field private attrFlag:Z

.field private attrSequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private attributesVector:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

.field private baseAlias:Ljava/lang/String;

.field private credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

.field private dlSequences:[Lcom/android/org/bouncycastle/asn1/DLSequence;

.field private encodable:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private estCerts:[Ljava/security/cert/X509Certificate;

.field private hs20KeyPairGenerator:Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;

.field private hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

.field private hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

.field private keyPair:Ljava/security/KeyPair;

.field private keyPass:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

.field private mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

.field private mCaCerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

.field private mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

.field public mContext:Landroid/content/Context;

.field private mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

.field private sigAlgo:Ljava/lang/String;

.field public tlsVal:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attributes.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->TEMP_ATTR_PATH:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server_cert.p7b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->TEMP_SERVER_CERT_PATH:Ljava/lang/String;

    .line 151
    const-string v0, "application/csrattrs"

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->EST_ATTR_CONTENT_TYPE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;Landroid/content/Context;)V
    .locals 3
    .param p1, "enrollmentParameters"    # Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attrFlag:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->sigAlgo:Ljava/lang/String;

    .line 169
    const-string v0, "HSClientCertESTKeyStore_"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->baseAlias:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    .line 196
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    .line 197
    iput-object p2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    .line 198
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->csrDir:Ljava/io/File;

    .line 199
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->csrDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->csrDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string v0, "HS20CertificateEnrollment"

    const-string v1, "Error in making directories"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "HS20CertificateEnrollment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    .line 205
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    const-string v1, "application/pkcs7-mime"

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->contentType:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20CertDetails;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCaCerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    .line 207
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    .line 208
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    .line 209
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;)Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    return-object v0
.end method

.method private extractSeq(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 9
    .param p1, "aseq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 474
    const/4 v2, 0x0

    .line 475
    .local v2, "no":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->encodable:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 476
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 477
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/org/bouncycastle/asn1/DLSequence;

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->dlSequences:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    .line 478
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 479
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->encodable:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 480
    const-string v4, "HS20CertificateEnrollment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "objest os "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->encodable:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->encodable:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v1

    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/DLSequence;

    if-eqz v4, :cond_1

    .line 482
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->dlSequences:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DLSequence;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->encodable:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v1

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v5, v4, v2

    .line 483
    const-string v4, "HS20CertificateEnrollment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dlas size ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->dlSequences:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DLSequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dls objects "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->dlSequences:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    aget-object v6, v6, v2

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->dlSequences:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    .line 486
    .local v0, "dls":Lcom/android/org/bouncycastle/asn1/DLSequence;
    add-int/lit8 v2, v2, 0x1

    .line 487
    new-instance v4, Lcom/android/server/wifi/BCProvider/Attribute;

    invoke-direct {v4, v0}, Lcom/android/server/wifi/BCProvider/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    .line 488
    const-string v4, "HS20CertificateEnrollment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type of attribute :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    invoke-virtual {v6}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    invoke-virtual {v4}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_extensionRequest:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    invoke-virtual {v4}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 494
    const-string v4, "HS20CertificateEnrollment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value of attribute :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v0    # "dls":Lcom/android/org/bouncycastle/asn1/DLSequence;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 497
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->encodable:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    goto :goto_1

    .line 499
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v4
.end method

.method private genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "derObj"    # Ljava/lang/Object;
    .param p3, "oids"    # Ljava/util/Vector;
    .param p4, "values"    # Ljava/util/Vector;

    .prologue
    .line 621
    :try_start_0
    instance-of v1, p2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_1

    .line 622
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .end local p2    # "derObj":Ljava/lang/Object;
    invoke-direct {v4, p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 625
    .restart local p2    # "derObj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v1, :cond_2

    .line 626
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    .end local p2    # "derObj":Ljava/lang/Object;
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HS20CertificateEnrollment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genDERAttribute err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p2    # "derObj":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v1, p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_3

    .line 629
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .end local p2    # "derObj":Ljava/lang/Object;
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    .restart local p2    # "derObj":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_4

    .line 632
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    .end local p2    # "derObj":Ljava/lang/Object;
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    .restart local p2    # "derObj":Ljava/lang/Object;
    :cond_4
    instance-of v1, p2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_5

    .line 635
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local p2    # "derObj":Ljava/lang/Object;
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 637
    .restart local p2    # "derObj":Ljava/lang/Object;
    :cond_5
    instance-of v1, p2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_6

    .line 638
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 639
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .end local p2    # "derObj":Ljava/lang/Object;
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 640
    .restart local p2    # "derObj":Ljava/lang/Object;
    :cond_6
    instance-of v1, p2, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    check-cast p2, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    .end local p2    # "derObj":Ljava/lang/Object;
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private genKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->dlSequences:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;-><init>([Lcom/android/org/bouncycastle/asn1/DLSequence;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyPairGenerator:Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;

    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyPairGenerator:Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method private getClientCert()Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 374
    .local v1, "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 375
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;

    .restart local v0    # "certificate":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->estCerts:[Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 378
    return-object v0
.end method

.method private getEsnMeid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 652
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 390
    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 393
    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 394
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 395
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 390
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

.method private setCredDetails()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    .line 345
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    const-string v1, "client hash"

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->clientCertHash:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    const-string v1, "priv key hash"

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->privateKeyHash:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->credentialID:I

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->credID:I

    .line 348
    return-void
.end method

.method private setESTCerts()V
    .locals 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->estCerts:[Ljava/security/cert/X509Certificate;

    .line 229
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 230
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x1

    .line 231
    .local v1, "no":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->estCerts:[Ljava/security/cert/X509Certificate;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v3, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "no":I
    :cond_0
    return-void
.end method

.method private storeCACerts()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v0, "mFile":Ljava/io/File;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->createKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->getKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    .line 218
    const-string v1, "HS20CertificateEnrollment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeCACerts: size  of keystore before storing OSUCAcerts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->setCerts(Ljava/util/Collection;Ljava/security/KeyStore;I)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    .line 220
    const-string v1, "HS20CertificateEnrollment"

    const-string v2, "storeCACerts: returned from keystoreAPi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    sget-object v5, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->storeKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 222
    const-string v1, "HS20CertificateEnrollment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeCACerts:size of the keystore after storing OSUCAcerts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->setESTCerts()V

    .line 224
    return-void
.end method

.method private writeToESTKeyStore()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->getClientCert()Ljava/security/cert/X509Certificate;

    .line 352
    new-instance v6, Ljava/io/File;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->baseAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".p12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v6, "certCred":Ljava/io/File;
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget-boolean v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    invoke-virtual {v1}, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->genCertID()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    if-gez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    .line 360
    :cond_1
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    .line 361
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->baseAlias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".p12"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->createKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->baseAlias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".p12"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->getKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    .line 366
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->estCerts:[Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->privateKey:Ljava/security/PrivateKey;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->setCert([Ljava/security/cert/Certificate;Ljava/security/KeyStore;ILjava/security/Key;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPass:Ljava/lang/String;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->ks:Ljava/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HSClientCertESTKeyStore_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".p12"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->storeKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 370
    return-void
.end method


# virtual methods
.method public addAttrToJcePKCS10(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 18
    .param p1, "tlsVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 528
    const-string v13, "HS20CertificateEnrollment"

    const-string v14, "addAttrToJcePKCS10:came to addattr_jce_PKCS10"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attrSequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v13, :cond_0

    .line 531
    const/4 v13, 0x0

    .line 616
    :goto_0
    return-object v13

    .line 533
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attrSequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->extractSeq(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    .line 534
    .local v10, "oids":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 536
    .local v12, "wimanager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "macAddr":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 538
    .local v1, "HWserialNo":Ljava/lang/String;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 539
    .local v9, "oid":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 540
    .local v11, "values":Ljava/util/Vector;
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attributesVector:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 541
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v13, v10

    if-ge v6, v13, :cond_4

    .line 542
    aget-object v13, v10, v6

    if-nez v13, :cond_1

    .line 541
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 545
    :cond_1
    const-string v13, "HS20CertificateEnrollment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addAttrToJcePKCS10:oid is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v6

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 548
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 549
    .local v2, "attrType":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v13}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 550
    .local v3, "attrValues":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    new-instance v13, Lcom/android/server/wifi/BCProvider/Attribute;

    invoke-direct {v13, v2, v3}, Lcom/android/server/wifi/BCProvider/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attributesVector:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 588
    .end local v2    # "attrType":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "attrValues":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->sigAlgo:Ljava/lang/String;

    if-nez v13, :cond_3

    .line 589
    const-string v13, "SHA256WITHRSA"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->sigAlgo:Ljava/lang/String;

    .line 590
    const-string v13, "HS20CertificateEnrollment"

    const-string v14, "addAttrToJcePKCS10: sigAlgo is SHA256WithRSA"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "1.2.840.113549.1.1.11"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    const-string v15, "SHA256"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 595
    :cond_3
    sget-object v13, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v14, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    new-instance v15, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v16, "1.3.6.1.4.1.40808.1.1.2"

    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;-><init>(Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 597
    sget-object v13, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v13, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v14, 0x1

    new-instance v15, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Z)V

    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v13, v14, v15}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v13, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    const/16 v13, 0x70

    invoke-direct {v7, v13}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    .line 603
    .local v7, "keyUsage":Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
    new-instance v13, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v14, 0x1

    new-instance v15, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v15, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v13, v14, v15}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v5, v9, v11}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 605
    .local v5, "extensions":Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    new-instance v13, Lcom/android/server/wifi/BCProvider/Attribute;

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_extensionRequest:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v15, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v15, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v13, v14, v15}, Lcom/android/server/wifi/BCProvider/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    .line 607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attributesVector:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mAttribute:Lcom/android/server/wifi/BCProvider/Attribute;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 610
    .end local v1    # "HWserialNo":Ljava/lang/String;
    .end local v5    # "extensions":Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .end local v6    # "j":I
    .end local v7    # "keyUsage":Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
    .end local v8    # "macAddr":Ljava/lang/String;
    .end local v9    # "oid":Ljava/util/Vector;
    .end local v10    # "oids":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v11    # "values":Ljava/util/Vector;
    .end local v12    # "wimanager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v4

    .line 611
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "HS20CertificateEnrollment"

    const-string v14, "addAttrToJcePKCS10:exception occured so not adding attributes returning null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v13, "HS20CertificateEnrollment"

    const-string v14, "addAttrToJcePKCS10:extensions have been parsed"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attributesVector:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    goto/16 :goto_0

    .line 553
    .restart local v1    # "HWserialNo":Ljava/lang/String;
    .restart local v6    # "j":I
    .restart local v8    # "macAddr":Ljava/lang/String;
    .restart local v9    # "oid":Ljava/util/Vector;
    .restart local v10    # "oids":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .restart local v11    # "values":Ljava/util/Vector;
    .restart local v12    # "wimanager":Landroid/net/wifi/WifiManager;
    :cond_5
    :try_start_1
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1.3.6.1.1.1.1.22"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 554
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "1.3.6.1.1.1.1.22"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v14, v8}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 556
    const-string v13, "HS20CertificateEnrollment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "macAddr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 558
    :cond_6
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "2.5.4.5"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 559
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "2.5.4.5"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v14, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    goto/16 :goto_3

    .line 562
    :cond_7
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1.3.6.1.4.1.40808.1.1.3"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 563
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "1.3.6.1.4.1.40808.1.1.3"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->getEsnMeid()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    goto/16 :goto_3

    .line 566
    :cond_8
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1.3.6.1.4.1.40808.1.1.4"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 567
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "1.3.6.1.4.1.40808.1.1.4"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->getEsnMeid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    goto/16 :goto_3

    .line 570
    :cond_9
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1.3.6.1.4.1.40808.1.1.5"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 571
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "1.3.6.1.4.1.40808.1.1.5"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "imei:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->getEsnMeid()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    goto/16 :goto_3

    .line 574
    :cond_a
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1.2.840.113549.1.1.11"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 575
    const-string v13, "SHA256WITHRSA"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->sigAlgo:Ljava/lang/String;

    .line 576
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "1.2.840.113549.1.1.11"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    const-string v15, "SHA256"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V

    goto/16 :goto_3

    .line 580
    :cond_b
    aget-object v13, v10, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1.2.840.10045.4.3.3"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 581
    const-string v13, "SHA384WITHECDSA"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->sigAlgo:Ljava/lang/String;

    .line 582
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "1.2.840.113549.1.1.11"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    const-string v15, "ecsha384"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genDERAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public certEnrollment()Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCaCerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    const-string v2, "/cacerts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->getCACerts(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-boolean v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certStatus:Z

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "HS20CertificateEnrollment"

    const-string v1, "certEnrollment:osuCAcerts generated successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->storeCACerts()V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->getCSRAttr()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attrSequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 179
    iget-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attrFlag:Z

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->enroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "HS20CertificateEnrollment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certEnrollment:Successfully completed Enrollment with  mCertDetails.iD :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    return-object v0

    .line 185
    :cond_0
    const-string v0, "HS20CertificateEnrollment"

    const-string v1, "certEnrollment:Enrollment Failed:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, "HS20CertificateEnrollment"

    const-string v1, "certEnrollment:fetching attribute  Failed:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_2
    const-string v0, "HS20CertificateEnrollment"

    const-string v1, "certEnrollment:obtaining certs has  Failed:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enroll()Z
    .locals 31

    .prologue
    .line 239
    const-string v27, "HS20CertificateEnrollment"

    const-string v28, "enroll:"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v11, 0x0

    .line 241
    .local v11, "enrollFlag":Z
    const/16 v21, 0x0

    .line 242
    .local v21, "path":Ljava/lang/String;
    const/16 v19, 0x0

    .line 243
    .local v19, "outStream":Ljava/io/OutputStream;
    const/16 v17, 0x0

    .line 244
    .local v17, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    move/from16 v27, v0

    if-nez v27, :cond_2

    .line 245
    const-string v21, "/simpleenroll"

    .line 249
    :goto_0
    const/4 v4, 0x0

    .line 250
    .local v4, "cp":Lorg/apache/http/client/CredentialsProvider;
    const/4 v7, 0x0

    .line 251
    .local v7, "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    const/16 v25, 0x0

    .line 252
    .local v25, "scope":Lorg/apache/http/auth/AuthScope;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 253
    .local v16, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    if-nez v16, :cond_3

    .line 254
    const/16 v27, 0x0

    .line 330
    if-eqz v19, :cond_0

    .line 331
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 333
    :cond_0
    if-eqz v17, :cond_1

    .line 334
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    .end local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_1
    :goto_1
    return v27

    .line 247
    .end local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .end local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    :cond_2
    const-string v21, "/simplereenroll"

    goto :goto_0

    .line 336
    .restart local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .restart local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    :catch_0
    move-exception v13

    .line 337
    .local v13, "ex":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v13    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestPWD:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestUserID:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 257
    new-instance v26, Lorg/apache/http/auth/AuthScope;

    sget-object v27, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/16 v28, -0x1

    invoke-direct/range {v26 .. v28}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    .end local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    .local v26, "scope":Lorg/apache/http/auth/AuthScope;
    :try_start_3
    new-instance v8, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestUserID:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestPWD:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 260
    .end local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .local v8, "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    :try_start_4
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll: digestusername:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestUserID:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " diegstPWD"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestPWD:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v5, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v5}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 263
    .end local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .local v5, "cp":Lorg/apache/http/client/CredentialsProvider;
    :try_start_5
    move-object/from16 v0, v26

    invoke-interface {v5, v0, v8}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v25, v26

    .end local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    move-object v7, v8

    .end local v8    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    move-object v4, v5

    .line 265
    .end local v5    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .restart local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    :cond_4
    :try_start_6
    new-instance v6, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v6}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 266
    .local v6, "credContext":Lorg/apache/http/protocol/HttpContext;
    const-string v27, "http.auth.credentials-provider"

    move-object/from16 v0, v27

    invoke-interface {v6, v0, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const/16 v23, 0x0

    .line 268
    .local v23, "response":Lorg/apache/http/HttpResponse;
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll:Est server uri:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 270
    .local v22, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v27, "HOST"

    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v27, "Content-Type"

    const-string v28, "application/pkcs10"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v27, "Content-Transfer-Encoding"

    const-string v28, "base64"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v27, "Connection"

    const-string v28, "close"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->tlsVal:[B

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->jcePKCS10(Ljava/lang/String;)Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v9

    .line 275
    .local v9, "csr":[B
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "CSR :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v27, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 277
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .line 278
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    .line 279
    .local v24, "responseCode":I
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll:response code for server certificate:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/16 v27, 0xc8

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 281
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 282
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 283
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    const-string v28, "application/pkcs7-mime"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 284
    new-instance v14, Ljava/io/File;

    sget-object v27, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->TEMP_SERVER_CERT_PATH:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v14, "fileCert":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_5

    .line 286
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v27

    if-nez v27, :cond_5

    .line 287
    const-string v27, "HS20CertificateEnrollment"

    const-string v28, "error in creating a new file"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 289
    .end local v19    # "outStream":Ljava/io/OutputStream;
    .local v20, "outStream":Ljava/io/OutputStream;
    const/16 v27, 0x2800

    :try_start_7
    move/from16 v0, v27

    new-array v3, v0, [B

    .line 290
    .local v3, "buffer":[B
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .local v18, "n":I
    const/16 v27, -0x1

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 291
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll:n value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 325
    .end local v3    # "buffer":[B
    .end local v14    # "fileCert":Ljava/io/File;
    .end local v18    # "n":I
    :catch_1
    move-exception v10

    move-object/from16 v19, v20

    .line 326
    .end local v6    # "credContext":Lorg/apache/http/protocol/HttpContext;
    .end local v9    # "csr":[B
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .end local v22    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "responseCode":I
    .local v10, "e":Ljava/lang/Exception;
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    :goto_3
    :try_start_8
    const-string v27, "HS20CertificateEnrollment"

    const-string v28, "enroll:exception occured"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 330
    if-eqz v19, :cond_6

    .line 331
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 333
    :cond_6
    if-eqz v17, :cond_7

    .line 334
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    move/from16 v27, v11

    .line 340
    goto/16 :goto_1

    .line 294
    .end local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "buffer":[B
    .restart local v6    # "credContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v9    # "csr":[B
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v14    # "fileCert":Ljava/io/File;
    .restart local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "n":I
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v22    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "responseCode":I
    :cond_8
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCaCerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->pemRead(Ljava/io/File;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    .line 296
    const/4 v11, 0x1

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->writeToESTKeyStore()V

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->setCredDetails()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v19, v20

    .line 330
    .end local v3    # "buffer":[B
    .end local v14    # "fileCert":Ljava/io/File;
    .end local v18    # "n":I
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    :goto_5
    if-eqz v19, :cond_9

    .line 331
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 333
    :cond_9
    if-eqz v17, :cond_7

    .line 334
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 336
    :catch_2
    move-exception v13

    .line 337
    .restart local v13    # "ex":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 300
    .end local v13    # "ex":Ljava/io/IOException;
    :cond_a
    :try_start_c
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll:server cert content type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v11, 0x0

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    goto :goto_5

    .line 325
    .end local v6    # "credContext":Lorg/apache/http/protocol/HttpContext;
    .end local v9    # "csr":[B
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v22    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "responseCode":I
    :catch_3
    move-exception v10

    goto :goto_3

    .line 306
    .restart local v6    # "credContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v9    # "csr":[B
    .restart local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v22    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "responseCode":I
    :cond_b
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll:serv cert  response code "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v11, 0x0

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->credDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    .line 309
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 310
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 311
    new-instance v15, Ljava/io/File;

    sget-object v27, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->TEMP_SERVER_CERT_PATH:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v15, "file_error":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_c

    .line 313
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 314
    :cond_c
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 315
    .end local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    const/16 v27, 0x2710

    :try_start_d
    move/from16 v0, v27

    new-array v3, v0, [B

    .line 316
    .restart local v3    # "buffer":[B
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .restart local v18    # "n":I
    const/16 v27, -0x1

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    .line 317
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll:n value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v27, "HS20CertificateEnrollment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enroll:base64 encoded string:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 329
    .end local v3    # "buffer":[B
    .end local v15    # "file_error":Ljava/io/File;
    .end local v18    # "n":I
    :catchall_0
    move-exception v27

    move-object/from16 v19, v20

    .line 330
    .end local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .end local v6    # "credContext":Lorg/apache/http/protocol/HttpContext;
    .end local v9    # "csr":[B
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .end local v22    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "responseCode":I
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    :goto_7
    if-eqz v19, :cond_d

    .line 331
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 333
    :cond_d
    if-eqz v17, :cond_e

    .line 334
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 338
    :cond_e
    :goto_8
    throw v27

    .line 321
    .end local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .restart local v6    # "credContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v9    # "csr":[B
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v15    # "file_error":Ljava/io/File;
    .restart local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "n":I
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v22    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "responseCode":I
    :cond_f
    :try_start_f
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 322
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v19, v20

    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    goto/16 :goto_5

    .line 336
    .end local v3    # "buffer":[B
    .end local v6    # "credContext":Lorg/apache/http/protocol/HttpContext;
    .end local v9    # "csr":[B
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v15    # "file_error":Ljava/io/File;
    .end local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v18    # "n":I
    .end local v22    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "responseCode":I
    .restart local v10    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v13

    .line 337
    .restart local v13    # "ex":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 336
    .end local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 337
    .restart local v13    # "ex":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 329
    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    :catchall_1
    move-exception v27

    goto :goto_7

    .end local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v16    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    :catchall_2
    move-exception v27

    move-object/from16 v25, v26

    .end local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    goto :goto_7

    .end local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .end local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v8    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    :catchall_3
    move-exception v27

    move-object/from16 v25, v26

    .end local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    move-object v7, v8

    .end local v8    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    goto :goto_7

    .line 325
    .end local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .restart local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    :catch_6
    move-exception v10

    move-object/from16 v25, v26

    .end local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    goto/16 :goto_3

    .end local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v8    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    :catch_7
    move-exception v10

    move-object/from16 v25, v26

    .end local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    move-object v7, v8

    .end local v8    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    goto/16 :goto_3

    .end local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .end local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v5    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .restart local v8    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    :catch_8
    move-exception v10

    move-object/from16 v25, v26

    .end local v26    # "scope":Lorg/apache/http/auth/AuthScope;
    .restart local v25    # "scope":Lorg/apache/http/auth/AuthScope;
    move-object v7, v8

    .end local v8    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .restart local v7    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    move-object v4, v5

    .end local v5    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .restart local v4    # "cp":Lorg/apache/http/client/CredentialsProvider;
    goto/16 :goto_3
.end method

.method public genCertID()I
    .locals 8

    .prologue
    .line 402
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 403
    .local v0, "dtNow":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 404
    const-string v3, "%Y%m%d%H%M"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "lsNow":Ljava/lang/String;
    const-string v3, "HS20CertificateEnrollment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genCertID:time stamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 407
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

.method public getCSRAttr()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 17

    .prologue
    .line 411
    const-string v14, "HS20CertificateEnrollment"

    const-string v15, "getCSRAttr:"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v14, 0x400

    new-array v3, v14, [B

    .line 413
    .local v3, "attrResponse":[B
    const/4 v2, 0x0

    .line 414
    .local v2, "aseq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    .line 416
    .local v10, "outStream":Ljava/io/OutputStream;
    :try_start_0
    const-string v14, "TLS"

    invoke-static {v14}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 417
    .local v8, "mSslContext":Ljavax/net/ssl/SSLContext;
    new-instance v5, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mContext:Landroid/content/Context;

    invoke-direct {v5, v14}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    .line 418
    .local v5, "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    const/4 v14, 0x0

    const-string v15, "EST"

    invoke-virtual {v5, v15}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchTrustManagerFactory(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 419
    const/4 v13, 0x0

    .line 420
    .local v13, "url":Ljava/net/URL;
    new-instance v13, Ljava/net/URL;

    .end local v13    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget-object v14, v14, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    const-string v15, "/csrattrs"

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 421
    .restart local v13    # "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    .line 422
    .local v9, "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 423
    const-string v14, "GET"

    invoke-virtual {v9, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 424
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 425
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 426
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v12

    .line 427
    .local v12, "responseCode":I
    const-string v14, "HS20CertificateEnrollment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getCSRAttr:response code for csr attributes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v14, 0xcc

    if-eq v12, v14, :cond_0

    const/16 v14, 0x194

    if-ne v12, v14, :cond_2

    .line 430
    :cond_0
    const-string v14, "HS20CertificateEnrollment"

    const-string v15, "getCSRAttr:seems server doesnt need any extra atrributes"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attrFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    const/4 v14, 0x0

    .line 463
    if-eqz v10, :cond_1

    .line 464
    :try_start_1
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    .end local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v14

    .line 466
    .restart local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 467
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 434
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    const/16 v14, 0xc8

    if-ne v12, v14, :cond_6

    .line 435
    :try_start_2
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->EST_ATTR_CONTENT_TYPE:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 436
    new-instance v7, Ljava/io/File;

    sget-object v14, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->TEMP_ATTR_PATH:Ljava/lang/String;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v7, "fileTemp":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 438
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v14

    if-nez v14, :cond_3

    .line 439
    const-string v14, "HS20CertificateEnrollment"

    const-string v15, "error in creating new file"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_3
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v14

    new-array v4, v14, [B

    .line 441
    .local v4, "buffer":[B
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/io/InputStream;->read([B)I

    .line 442
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 443
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    .end local v10    # "outStream":Ljava/io/OutputStream;
    .local v11, "outStream":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v11, v4}, Ljava/io/OutputStream;->write([B)V

    .line 445
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 446
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v3

    .line 447
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 448
    .local v1, "ain":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v2, v0

    .line 449
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attrFlag:Z

    .line 450
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v11

    .line 463
    .end local v1    # "ain":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "buffer":[B
    .end local v7    # "fileTemp":Ljava/io/File;
    .end local v11    # "outStream":Ljava/io/OutputStream;
    .restart local v10    # "outStream":Ljava/io/OutputStream;
    :goto_1
    if-eqz v10, :cond_4

    .line 464
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :cond_4
    :goto_2
    move-object v14, v2

    .line 470
    goto :goto_0

    .line 452
    .restart local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_5
    :try_start_5
    const-string v14, "HS20CertificateEnrollment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getCSRAttr:csr attr content type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 458
    .end local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 459
    .local v6, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v14, "HS20CertificateEnrollment"

    const-string v15, "getCSRAttr:got an exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 463
    if-eqz v10, :cond_4

    .line 464
    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 466
    :catch_2
    move-exception v6

    .line 467
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 456
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_6
    :try_start_8
    const-string v14, "HS20CertificateEnrollment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getCSRAttr:csr attr response code "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 462
    .end local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v14

    .line 463
    :goto_4
    if-eqz v10, :cond_7

    .line 464
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 468
    :cond_7
    :goto_5
    throw v14

    .line 466
    .restart local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :catch_3
    move-exception v6

    .line 467
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 466
    .end local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :catch_4
    move-exception v6

    .line 467
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 462
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "certManager":Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
    .restart local v7    # "fileTemp":Ljava/io/File;
    .restart local v8    # "mSslContext":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "mUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "outStream":Ljava/io/OutputStream;
    .restart local v10    # "outStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 458
    .end local v10    # "outStream":Ljava/io/OutputStream;
    .restart local v11    # "outStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v6

    move-object v10, v11

    .end local v11    # "outStream":Ljava/io/OutputStream;
    .restart local v10    # "outStream":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 12

    .prologue
    .line 656
    const/4 v4, 0x0

    .line 658
    .local v4, "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 659
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 660
    const-string v8, "utf-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 661
    const-string v8, "http.protocol.expect-continue"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 662
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 663
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 664
    .local v7, "trustStore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 665
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;

    invoke-direct {v6, p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment$MySSLSocketFactory;-><init>(Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;Ljava/security/KeyStore;)V

    .line 667
    .local v6, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 669
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 670
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    new-instance v10, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v10}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 671
    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 672
    .local v1, "manager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v5, "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v4, v5

    .line 677
    .end local v1    # "manager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "trustStore":Ljava/security/KeyStore;
    .restart local v4    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_0
    return-object v4

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "HS20CertificateEnrollment"

    const-string v9, "DefaultHttpClient:exception occured"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getHash([B)Ljava/lang/String;
    .locals 4
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    const-string v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 383
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 384
    const-string v2, "HS20CertificateEnrollment"

    const-string v3, "sha256 digest complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 386
    .local v0, "fpSHA256":[B
    invoke-static {v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->hexify([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public jcePKCS10(Ljava/lang/String;)Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    .locals 8
    .param p1, "tlsVal"    # Ljava/lang/String;

    .prologue
    .line 504
    const-string v1, "HS20CertificateEnrollment"

    const-string v3, "generating CSR"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v7, 0x0

    .line 507
    .local v7, "jcePKCS10":Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    :try_start_0
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "secure.srib.com,O=samsung,L=Bangalore,ST=karnataka,C=IN,OU=siso"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, "subjectName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->addAttrToJcePKCS10(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 510
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPair:Ljava/security/KeyPair;

    .line 511
    new-instance v0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->sigAlgo:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->attributesVector:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v7    # "jcePKCS10":Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    .local v0, "jcePKCS10":Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    :try_start_1
    const-string v1, "HS20CertificateEnrollment"

    const-string v3, "jcePKCS10:added attributes to CSR"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->privateKey:Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    .end local v2    # "subjectName":Ljavax/security/auth/x500/X500Principal;
    :goto_0
    return-object v0

    .line 515
    .end local v0    # "jcePKCS10":Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    .restart local v7    # "jcePKCS10":Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 516
    .end local v7    # "jcePKCS10":Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    .restart local v0    # "jcePKCS10":Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "HS20CertificateEnrollment"

    const-string v3, "jcePKCS10:got an exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 515
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "subjectName":Ljavax/security/auth/x500/X500Principal;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
