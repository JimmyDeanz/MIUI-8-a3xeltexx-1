.class public Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;
.super Ljava/lang/Object;
.source "XMLNotationDecl.java"


# instance fields
.field public baseSystemId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "baseSystemId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    .line 59
    return-void
.end method
