.class public Lmf/org/apache/html/dom/HTMLAnchorElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLAnchorElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLAnchorElement;


# static fields
.field private static final serialVersionUID:J = -0x1f35d48de1c9897L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blur()V
    .locals 0

    .prologue
    return-void
.end method

.method public focus()V
    .locals 0

    .prologue
    return-void
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "accesskey"

    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "accessKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoords()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "coords"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "href"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "hreflang"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "rel"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "rev"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "shape"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    .prologue
    const-string v0, "tabindex"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "target"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "accesskey"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const-string v0, "charset"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCoords(Ljava/lang/String;)V
    .locals 1
    .param p1, "coords"    # Ljava/lang/String;

    .prologue
    const-string v0, "coords"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    const-string v0, "href"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHreflang(Ljava/lang/String;)V
    .locals 1
    .param p1, "hreflang"    # Ljava/lang/String;

    .prologue
    const-string v0, "hreflang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 1
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    const-string v0, "rel"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRev(Ljava/lang/String;)V
    .locals 1
    .param p1, "rev"    # Ljava/lang/String;

    .prologue
    const-string v0, "rev"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShape(Ljava/lang/String;)V
    .locals 1
    .param p1, "shape"    # Ljava/lang/String;

    .prologue
    const-string v0, "shape"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 2
    .param p1, "tabIndex"    # I

    .prologue
    const-string v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const-string v0, "target"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
