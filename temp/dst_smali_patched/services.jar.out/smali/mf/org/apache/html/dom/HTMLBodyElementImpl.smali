.class public Lmf/org/apache/html/dom/HTMLBodyElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLBodyElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLBodyElement;


# static fields
.field private static final serialVersionUID:J = 0x7db78250e4cbc182L


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
.method public getALink()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "alink"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "background"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "link"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVLink()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "vlink"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setALink(Ljava/lang/String;)V
    .locals 1
    .param p1, "aLink"    # Ljava/lang/String;

    .prologue
    const-string v0, "alink"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 1
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    const-string v0, "background"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const-string v0, "link"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-string v0, "text"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "vLink"    # Ljava/lang/String;

    .prologue
    const-string v0, "vlink"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
