.class public Lmf/org/apache/html/dom/HTMLUListElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLUListElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLUListElement;


# static fields
.field private static final serialVersionUID:J = -0x2cb12a0c9177605bL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getCompact()Z
    .locals 1

    .prologue
    .line 37
    const-string v0, "compact"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLUListElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLUListElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCompact(Z)V
    .locals 1
    .param p1, "compact"    # Z

    .prologue
    .line 43
    const-string v0, "compact"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLUListElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLUListElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
