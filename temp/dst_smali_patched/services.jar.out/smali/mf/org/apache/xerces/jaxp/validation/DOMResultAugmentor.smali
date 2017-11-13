.class final Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;
.super Ljava/lang/Object;
.source "DOMResultAugmentor.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fDocument:Lmf/org/w3c/dom/Document;

.field private fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private fIgnoreChars:Z

.field private fStorePSVI:Z


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V
    .locals 1
    .param p1, "helper"    # Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    return-void
.end method

.method private processAttributePSVI(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/xs/AttributePSVI;)Z
    .locals 2
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "attrPSVI"    # Lmf/org/apache/xerces/xs/AttributePSVI;

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    .local v0, "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    if-nez v0, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .end local v0    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    :goto_0
    return v1

    .local v0, "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    :cond_1
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .end local v0    # "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    goto :goto_0

    .local v0, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cdata(Lmf/org/w3c/dom/CDATASection;)V
    .locals 0
    .param p1, "node"    # Lmf/org/w3c/dom/CDATASection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Element;

    .local v0, "currentElement":Lmf/org/w3c/dom/Element;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .end local v0    # "currentElement":Lmf/org/w3c/dom/Element;
    :cond_0
    return-void
.end method

.method public characters(Lmf/org/w3c/dom/Text;)V
    .locals 0
    .param p1, "node"    # Lmf/org/w3c/dom/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public comment(Lmf/org/w3c/dom/Comment;)V
    .locals 0
    .param p1, "node"    # Lmf/org/w3c/dom/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public doctypeDecl(Lmf/org/w3c/dom/DocumentType;)V
    .locals 0
    .param p1, "node"    # Lmf/org/w3c/dom/DocumentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "currentElement":Lmf/org/w3c/dom/Node;
    if-eqz p2, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_2

    const-string v3, "ELEMENT_PSVI"

    invoke-interface {p2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/ElementPSVI;

    .local v1, "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    .local v2, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v2, :cond_1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    :cond_1
    check-cast v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    .end local v0    # "currentElement":Lmf/org/w3c/dom/Node;
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    .end local v1    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    .end local v2    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public processingInstruction(Lmf/org/w3c/dom/ProcessingInstruction;)V
    .locals 0
    .param p1, "node"    # Lmf/org/w3c/dom/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V
    .locals 4
    .param p1, "result"    # Lmf/javax/xml/transform/dom/DOMResult;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "target":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Document;

    .end local v0    # "target":Lmf/org/w3c/dom/Node;
    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of v1, v1, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    :goto_1
    return-void

    .restart local v0    # "target":Lmf/org/w3c/dom/Node;
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .end local v0    # "target":Lmf/org/w3c/dom/Node;
    :cond_2
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    goto :goto_1
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 12
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v7}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Element;

    .local v3, "currentElement":Lmf/org/w3c/dom/Element;
    invoke-interface {v3}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    .local v1, "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    .local v6, "oldLength":I
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v6, :cond_2

    .end local v4    # "i":I
    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v5

    .local v5, "newLength":I
    if-le v5, v6, :cond_1

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-nez v7, :cond_5

    move v4, v6

    .restart local v4    # "i":I
    :goto_1
    if-lt v4, v5, :cond_4

    .end local v4    # "i":I
    :cond_1
    return-void

    .end local v5    # "newLength":I
    .restart local v4    # "i":I
    :cond_2
    invoke-interface {v1, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .local v0, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v7

    const-string v8, "ATTRIBUTE_PSVI"

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/AttributePSVI;

    .local v2, "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    if-eqz v2, :cond_3

    invoke-direct {p0, v0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/xs/AttributePSVI;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v3

    check-cast v7, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v7, v0, v11}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    .end local v2    # "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    .restart local v5    # "newLength":I
    :cond_4
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v4, v7}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lmf/org/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_5
    move v4, v6

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v5, :cond_1

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v4, v7}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .restart local v0    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v7

    const-string v8, "ATTRIBUTE_PSVI"

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/AttributePSVI;

    .restart local v2    # "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    if-eqz v2, :cond_6

    invoke-direct {p0, v0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/xs/AttributePSVI;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v3

    check-cast v7, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v7, v0, v11}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method
