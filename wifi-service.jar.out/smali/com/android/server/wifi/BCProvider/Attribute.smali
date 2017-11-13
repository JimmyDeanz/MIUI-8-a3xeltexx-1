.class public Lcom/android/server/wifi/BCProvider/Attribute;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Attribute.java"


# instance fields
.field private attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValues"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    iput-object p2, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/server/wifi/BCProvider/Attribute;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/server/wifi/BCProvider/Attribute;

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    check-cast p0, Lcom/android/server/wifi/BCProvider/Attribute;

    .line 33
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 31
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Lcom/android/server/wifi/BCProvider/Attribute;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/server/wifi/BCProvider/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 35
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getAttributeValues()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/wifi/BCProvider/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
