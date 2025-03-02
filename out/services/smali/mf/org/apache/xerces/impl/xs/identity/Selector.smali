.class public Lmf/org/apache/xerces/impl/xs/identity/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;,
        Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    }
.end annotation


# instance fields
.field protected fIDConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field protected final fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field protected final fXPath:Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0
    .param p1, "xpath"    # Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    .param p2, "identityConstraint"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    .line 62
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 63
    return-void
.end method


# virtual methods
.method public createMatcher(Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2
    .param p1, "activator"    # Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;
    .param p2, "initialDepth"    # I

    .prologue
    .line 87
    new-instance v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    invoke-direct {v0, p0, v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Selector;Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)V

    return-object v0
.end method

.method public getIDConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method public getXPath()Lmf/org/apache/xerces/impl/xpath/XPath;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
