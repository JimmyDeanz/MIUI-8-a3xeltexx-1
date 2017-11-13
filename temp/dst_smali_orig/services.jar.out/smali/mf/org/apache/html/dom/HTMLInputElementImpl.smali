.class public Lmf/org/apache/html/dom/HTMLInputElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLInputElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLInputElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = 0x8e23b5328e32967L


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

.method public click()V
    .locals 0

    .prologue
    return-void
.end method

.method public focus()V
    .locals 0

    .prologue
    return-void
.end method

.method public getAccept()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "accept"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "accesskey"

    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    const-string v0, "checked"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultChecked()Z
    .locals 1

    .prologue
    const-string v0, "defaultChecked"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "defaultValue"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    const-string v0, "maxlength"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    const-string v0, "readonly"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "size"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "src"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 2

    .prologue
    :try_start_0
    const-string v1, "tabindex"

    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "except":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "useMap"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .locals 0

    .prologue
    return-void
.end method

.method public setAccept(Ljava/lang/String;)V
    .locals 1
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    const-string v0, "accept"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1
    .param p1, "alt"    # Ljava/lang/String;

    .prologue
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    const-string v0, "checked"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultChecked(Z)V
    .locals 1
    .param p1, "defaultChecked"    # Z

    .prologue
    const-string v0, "defaultChecked"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    const-string v0, "defaultValue"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    const-string v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 2
    .param p1, "maxLength"    # I

    .prologue
    const-string v0, "maxlength"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1
    .param p1, "readOnly"    # Z

    .prologue
    const-string v0, "readonly"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    const-string v0, "size"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 2
    .param p1, "tabIndex"    # I

    .prologue
    const-string v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 1
    .param p1, "useMap"    # Ljava/lang/String;

    .prologue
    const-string v0, "useMap"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
