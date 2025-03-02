.class public Lmf/org/apache/html/dom/HTMLOptionElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLOptionElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLOptionElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4439af5ea1121bL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 205
    return-void
.end method


# virtual methods
.method public getDefaultSelected()Z
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "default-selected"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 101
    .local v2, "parent":Lmf/org/w3c/dom/Node;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v3, v2, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-eqz v3, :cond_3

    .line 103
    :cond_0
    if-eqz v2, :cond_1

    .line 108
    check-cast v2, Lmf/org/w3c/dom/html/HTMLElement;

    .end local v2    # "parent":Lmf/org/w3c/dom/Node;
    const-string v3, "OPTION"

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    .line 109
    .local v1, "options":Lmf/org/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 113
    .end local v0    # "i":I
    .end local v1    # "options":Lmf/org/w3c/dom/NodeList;
    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0

    .line 102
    .restart local v2    # "parent":Lmf/org/w3c/dom/Node;
    :cond_3
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 110
    .end local v2    # "parent":Lmf/org/w3c/dom/Node;
    .restart local v0    # "i":I
    .restart local v1    # "options":Lmf/org/w3c/dom/NodeList;
    :cond_4
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eq v3, p0, :cond_2

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 175
    const-string/jumbo v0, "selected"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v1, "text":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 62
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 64
    :cond_0
    instance-of v2, v0, Lmf/org/w3c/dom/Text;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 65
    check-cast v2, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultSelected(Z)V
    .locals 1
    .param p1, "defaultSelected"    # Z

    .prologue
    .line 50
    const-string/jumbo v0, "default-selected"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 157
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 158
    return-void
.end method

.method public setIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 127
    .local v2, "parent":Lmf/org/w3c/dom/Node;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v3, v2, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-eqz v3, :cond_2

    .line 129
    :cond_0
    if-eqz v2, :cond_1

    .line 135
    check-cast v2, Lmf/org/w3c/dom/html/HTMLElement;

    .end local v2    # "parent":Lmf/org/w3c/dom/Node;
    const-string v3, "OPTION"

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    .line 136
    .local v1, "options":Lmf/org/w3c/dom/NodeList;
    invoke-interface {v1, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 141
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 142
    invoke-interface {v1, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 143
    .local v0, "item":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, p0, v0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 146
    .end local v0    # "item":Lmf/org/w3c/dom/Node;
    .end local v1    # "options":Lmf/org/w3c/dom/NodeList;
    :cond_1
    return-void

    .line 128
    .restart local v2    # "parent":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 181
    const-string/jumbo v0, "selected"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 182
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 81
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 88
    return-void

    .line 83
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 84
    .local v1, "next":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 85
    move-object v0, v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method
