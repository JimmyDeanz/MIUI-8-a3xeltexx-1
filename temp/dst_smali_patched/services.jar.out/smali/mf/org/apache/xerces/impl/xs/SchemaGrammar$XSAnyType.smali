.class Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;
.super Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSAnyType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    const-string v0, "anyType"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fName:Ljava/lang/String;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fDerivedBy:S

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fContentType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 3

    .prologue
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .local v1, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    .local v0, "attrGrp":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v0
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 2

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .local v0, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object v0
.end method

.method public getParticle()Lmf/org/apache/xerces/xs/XSParticle;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .local v3, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iput-short v7, v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .local v2, "particleW":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iput v5, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v4, -0x1

    iput v4, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v4, 0x2

    iput-short v4, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .local v0, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v4, 0x66

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v6, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v4, v6, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v2, v4, v5

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .local v1, "particleG":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iput-short v7, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v1
.end method

.method public reset()V
    .locals 0

    .prologue
    return-void
.end method

.method public setContainsTypeID()V
    .locals 0

    .prologue
    return-void
.end method

.method public setIsAbstractType()V
    .locals 0

    .prologue
    return-void
.end method

.method public setIsAnonymous()V
    .locals 0

    .prologue
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "baseType"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p4, "derivedBy"    # S
    .param p5, "schemaFinal"    # S
    .param p6, "block"    # S
    .param p7, "contentType"    # S
    .param p8, "isAbstract"    # Z
    .param p9, "attrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p10, "simpleType"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p11, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    return-void
.end method
