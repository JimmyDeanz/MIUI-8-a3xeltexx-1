.class Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;
.super Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuiltinAttrDecl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tns"    # Ljava/lang/String;
    .param p3, "type"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p4, "scope"    # S

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;->fName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-short p4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;->fScope:S

    return-void
.end method


# virtual methods
.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "simpleType"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p4, "constraintType"    # S
    .param p5, "scope"    # S
    .param p6, "valInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .param p7, "enclosingCT"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    return-void
.end method
