.class public Lmf/org/apache/wml/dom/WMLSmallElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLSmallElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLSmallElement;


# static fields
.field private static final serialVersionUID:J = 0x24d6a57248a03404L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSmallElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSmallElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSmallElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSmallElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSmallElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSmallElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
