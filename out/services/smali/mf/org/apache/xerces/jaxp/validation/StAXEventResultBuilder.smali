.class final Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.super Ljava/lang/Object;
.source "StAXEventResultBuilder.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;,
        Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;


# instance fields
.field private final fAttrName:Lmf/org/apache/xerces/xni/QName;

.field private final fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

.field private fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

.field private fIgnoreChars:Z

.field private fInCDATA:Z

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private final fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    .line 375
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 1
    .param p1, "helper"    # Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
    .param p2, "context"    # Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    .line 70
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    .line 71
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .line 72
    invoke-static {}, Lmf/javax/xml/stream/XMLEventFactory;->newInstance()Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-object v0
.end method

.method private getAttributeIterator(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p2, "length"    # I

    .prologue
    .line 273
    if-lez p2, :cond_0

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;Lmf/org/apache/xerces/xni/XMLAttributes;I)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method private getNamespaceIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result v0

    .line 278
    .local v0, "length":I
    if-lez v0, :cond_0

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;

    invoke-direct {v1, p0, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;I)V

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public cdata(Lmf/javax/xml/stream/events/Characters;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/Characters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 135
    return-void
.end method

.method public characters(Lmf/javax/xml/stream/events/Characters;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/Characters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 131
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    if-nez v1, :cond_0

    .line 216
    :try_start_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    if-nez v1, :cond_1

    .line 217
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/javax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/javax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lmf/javax/xml/stream/XMLStreamException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public comment(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/javax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Lmf/javax/xml/stream/events/Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 100
    return-void
.end method

.method public comment(Lmf/javax/xml/stream/events/Comment;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 139
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
    .line 169
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
    .line 167
    return-void
.end method

.method public doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/DTD;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 127
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
    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 199
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 200
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    .line 258
    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-virtual {v1}, Lmf/javax/xml/stream/XMLEventFactory;->createEndDocument()Lmf/javax/xml/stream/events/EndDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 95
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventWriter;->flush()V

    .line 96
    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/events/EndDocument;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/EndDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 122
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventWriter;->flush()V

    .line 123
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
    .line 260
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->getCurrentEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 239
    .local v1, "end":Lmf/javax/xml/stream/events/XMLEvent;
    if-eqz v1, :cond_0

    .line 240
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v2, v1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 244
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getNamespaceIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 243
    invoke-virtual {v3, v4, v5, v6, v7}, Lmf/javax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v1    # "end":Lmf/javax/xml/stream/events/XMLEvent;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lmf/javax/xml/stream/XMLStreamException;
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
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
    .line 210
    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    .line 113
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->getEntityDeclaration(Ljava/lang/String;)Lmf/javax/xml/stream/events/EntityDeclaration;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v0, v3}, Lmf/javax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Lmf/javax/xml/stream/events/EntityDeclaration;)Lmf/javax/xml/stream/events/EntityReference;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 114
    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/events/EntityReference;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/EntityReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 149
    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 265
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
    .line 231
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 232
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
    .line 172
    return-void
.end method

.method public processingInstruction(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v3

    .line 106
    if-eqz v0, :cond_0

    .line 105
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3, v0}, Lmf/javax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/ProcessingInstruction;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 107
    return-void

    .line 106
    .restart local v0    # "data":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 144
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 262
    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    .line 153
    return-void
.end method

.method public setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 1
    .param p1, "result"    # Lmf/javax/xml/transform/stax/StAXResult;

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    .line 81
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmf/javax/xml/transform/stax/StAXResult;->getXMLEventWriter()Lmf/javax/xml/stream/XMLEventWriter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    .line 254
    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 5
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "version":Ljava/lang/String;
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "encoding":Ljava/lang/String;
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v1

    .line 89
    .local v1, "standalone":Z
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    if-eqz v0, :cond_0

    .line 90
    .end local v0    # "encoding":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    .line 89
    .end local v2    # "version":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v0, v2, v1}, Lmf/javax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lmf/javax/xml/stream/events/StartDocument;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 91
    return-void

    .line 89
    .restart local v0    # "encoding":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0

    .line 90
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_1
    const-string v2, "1.0"

    goto :goto_1
.end method

.method public startDocument(Lmf/javax/xml/stream/events/StartDocument;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/StartDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 118
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
    .line 161
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 11
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v8

    .line 178
    .local v8, "length":I
    if-nez v8, :cond_0

    .line 180
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->getCurrentEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v9

    .line 181
    .local v9, "start":Lmf/javax/xml/stream/events/XMLEvent;
    if-eqz v9, :cond_0

    .line 182
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    invoke-interface {v0, v9}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 194
    .end local v9    # "start":Lmf/javax/xml/stream/events/XMLEvent;
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v10, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 187
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_1
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 188
    invoke-direct {p0, p2, v8}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getAttributeIterator(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getNamespaceIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 189
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v6

    .line 186
    invoke-virtual/range {v0 .. v6}, Lmf/javax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;)Lmf/javax/xml/stream/events/StartElement;

    move-result-object v0

    invoke-interface {v10, v0}, Lmf/javax/xml/stream/XMLEventWriter;->add(Lmf/javax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v8    # "length":I
    :catch_0
    move-exception v7

    .line 192
    .local v7, "e":Lmf/javax/xml/stream/XMLStreamException;
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 187
    .end local v7    # "e":Lmf/javax/xml/stream/XMLStreamException;
    .restart local v8    # "length":I
    :cond_1
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
    .line 204
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
    .line 207
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
    .line 164
    return-void
.end method
