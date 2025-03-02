.class public Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "NamedNodeMapImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NamedNodeMap;


# instance fields
.field attrs:[Lmf/org/w3c/dom/Attr;


# direct methods
.method public constructor <init>([Lmf/org/w3c/dom/Attr;)V
    .locals 0
    .param p1, "attrs"    # [Lmf/org/w3c/dom/Attr;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    .line 39
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v0, v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 47
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 43
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 67
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 63
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 51
    if-gez p1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->getLength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
