.class public Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;
.super Ljava/lang/Object;
.source "WifiHs20KeyPairGenerator.java"


# static fields
.field private static final DEFAULT:I = 0x800

.field private static final ECCDA_WITH_SHA384_OID:Ljava/lang/String; = "1.2.840.10045.4.3.3"

.field private static final EC_CURVE_PARAM:Ljava/lang/String; = "secp384r1"

.field private static final EC_KEY_OID:Ljava/lang/String; = "1.2.840.10045.2.1"

.field private static final RSA_KEY_OID:Ljava/lang/String; = "1.2.840.113549.1.1.1"

.field private static final SHA256_WITH_RSA_ENCRYPTION_OID:Ljava/lang/String; = "1.2.840.113549.1.1.11"

.field private static final TAG:Ljava/lang/String; = "HS20KeyPairGenerator"


# instance fields
.field private attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private dlSequence:[Lcom/android/org/bouncycastle/asn1/DLSequence;

.field private ecGenParameterSpec:Ljava/security/spec/ECGenParameterSpec;

.field private initialise:Z

.field private keyPairGenerator:Ljava/security/KeyPairGenerator;


# direct methods
.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/DLSequence;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "dlSequence"    # [Lcom/android/org/bouncycastle/asn1/DLSequence;
    .param p2, "attr"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->initialise:Z

    .line 41
    iput-object p2, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 42
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->dlSequence:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->dlSequence:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->init()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->initialise:Z

    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->init2()V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "RSA"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->defaultInit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private defaultInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->initialise:Z

    .line 55
    return-void
.end method

.method private init()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "dls_":Lcom/android/org/bouncycastle/asn1/DLSequence;
    const/4 v1, 0x0

    .line 83
    .local v1, "dls":Lcom/android/org/bouncycastle/asn1/DLSequence;
    const/4 v0, 0x0

    .line 84
    .local v0, "attribute":Lcom/android/server/wifi/BCProvider/Attribute;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->dlSequence:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 85
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->dlSequence:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->dlSequence:[Lcom/android/org/bouncycastle/asn1/DLSequence;

    aget-object v1, v4, v3

    .line 87
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .end local v2    # "dls_":Lcom/android/org/bouncycastle/asn1/DLSequence;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DLSequence;

    .line 88
    .restart local v2    # "dls_":Lcom/android/org/bouncycastle/asn1/DLSequence;
    new-instance v0, Lcom/android/server/wifi/BCProvider/Attribute;

    .end local v0    # "attribute":Lcom/android/server/wifi/BCProvider/Attribute;
    invoke-direct {v0, v2}, Lcom/android/server/wifi/BCProvider/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 89
    .restart local v0    # "attribute":Lcom/android/server/wifi/BCProvider/Attribute;
    const-string v4, "HS20KeyPairGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init():attribute.getAttrType().toString():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1.2.840.10045.2.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->initialise:Z

    if-eqz v4, :cond_1

    .line 92
    const-string v4, "HS20KeyPairGenerator"

    const-string v5, "init() :ecKeyOid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v4, "EC"

    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "secp384r1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    new-instance v4, Ljava/security/spec/ECGenParameterSpec;

    const-string v5, "secp384r1"

    invoke-direct {v4, v5}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->ecGenParameterSpec:Ljava/security/spec/ECGenParameterSpec;

    .line 96
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->ecGenParameterSpec:Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v4, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 98
    :cond_0
    iput-boolean v7, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->initialise:Z

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1.2.840.113549.1.1.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->initialise:Z

    if-eqz v4, :cond_2

    .line 101
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    .line 102
    invoke-virtual {v0}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 103
    const-string v4, "HS20KeyPairGenerator"

    const-string v5, "init() :rsaKeyOid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Lcom/android/server/wifi/BCProvider/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 106
    iput-boolean v7, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->initialise:Z

    .line 84
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 111
    :cond_3
    return-void
.end method

.method private init2()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 59
    const-string v1, "HS20KeyPairGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init2():attribute  oid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.2.840.113549.1.1.11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "HS20KeyPairGenerator"

    const-string v2, "init2():finally default init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "RSA"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->defaultInit(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->attribute:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.2.840.10045.4.3.3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "HS20KeyPairGenerator"

    const-string v2, "init2():finally default init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "SHA384withECDSA"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->defaultInit(Ljava/lang/String;)V

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method


# virtual methods
.method public genKeyPair()Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "RSA"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->defaultInit(Ljava/lang/String;)V

    .line 74
    const-string v0, "HS20KeyPairGenerator"

    const-string v1, "genKeyPair():server didnt send any info for generating pubu key , using default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20KeyPairGenerator;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method
