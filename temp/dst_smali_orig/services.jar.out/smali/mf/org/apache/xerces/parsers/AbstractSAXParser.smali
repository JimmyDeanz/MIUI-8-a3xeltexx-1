.class public abstract Lmf/org/apache/xerces/parsers/AbstractSAXParser;
.super Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;
.source "AbstractSAXParser.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/PSVIProvider;
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;,
        Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final DECLARATION_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field protected static final DOM_NODE:Ljava/lang/String; = "http://xml.org/sax/properties/dom-node"

.field protected static final LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field private final fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

.field private fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

.field protected fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fDTDHandler:Lorg/xml/sax/DTDHandler;

.field protected fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field protected fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

.field protected fDocumentHandler:Lorg/xml/sax/DocumentHandler;

.field protected fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected fLexicalHandlerParameterEntities:Z

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field protected fParseInProgress:Z

.field protected final fQName:Lmf/org/apache/xerces/xni/QName;

.field protected fResolveDTDURIs:Z

.field protected fStandalone:Z

.field protected fUseEntityResolver2:Z

.field protected fVersion:Ljava/lang/String;

.field protected fXMLNSURIs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v2

    const-string v1, "http://xml.org/sax/features/string-interning"

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    aput-object v1, v0, v2

    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    aput-object v1, v0, v3

    const-string v1, "http://xml.org/sax/properties/dom-node"

    aput-object v1, v0, v4

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 3
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    new-instance v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    :try_start_0
    const-string v0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "enumeration"    # [Ljava/lang/String;
    .param p5, "defaultType"    # Ljava/lang/String;
    .param p6, "defaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p7, "nonNormalizedDefaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p8, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "elemAttr":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .end local v7    # "elemAttr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v7    # "elemAttr":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "NOTATION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ENUMERATION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .local v9, "str":Ljava/lang/StringBuffer;
    const-string v0, "NOTATION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, p4

    if-lt v8, v0, :cond_5

    const/16 v0, 0x29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .end local v8    # "i":I
    .end local v9    # "str":Ljava/lang/StringBuffer;
    :cond_3
    if-nez p6, :cond_7

    const/4 v5, 0x0

    .local v5, "value":Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "elemAttr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Lorg/xml/sax/SAXException;
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .end local v6    # "e":Lorg/xml/sax/SAXException;
    .restart local v7    # "elemAttr":Ljava/lang/String;
    .restart local v9    # "str":Ljava/lang/StringBuffer;
    :cond_4
    const/16 v0, 0x28

    :try_start_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .restart local v8    # "i":I
    :cond_5
    aget-object v0, p4, v8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_6

    const/16 v0, 0x7c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v8    # "i":I
    .end local v9    # "str":Ljava/lang/StringBuffer;
    :cond_7
    invoke-virtual/range {p6 .. p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_3
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v3, 0x0

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
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
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v1, :cond_1

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentModel"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v1, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v1}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_1

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .local v2, "uri":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v3, :cond_3

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .local v1, "localpart":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v3, v2, v1, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->endNamespaceMapping()V

    .end local v1    # "localpart":Ljava/lang/String;
    .end local v2    # "uri":Ljava/lang/String;
    :cond_1
    return-void

    :cond_2
    const-string v2, ""

    goto :goto_0

    .restart local v2    # "uri":Ljava/lang/String;
    :cond_3
    const-string v1, ""
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const-string v0, "[dtd]"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ENTITY_SKIPPED"

    invoke-interface {p2, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected final endNamespaceMapping()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .end local v1    # "i":I
    :cond_0
    return-void

    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ENTITY_SKIPPED"

    invoke-interface {p2, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v3, :cond_0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .local v1, "publicId":Ljava/lang/String;
    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v3, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    .local v2, "systemId":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v3, p1, v1, v2}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "publicId":Ljava/lang/String;
    .end local v2    # "systemId":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "publicId":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1    # "publicId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string v1, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/AttributePSVI;

    return-object v0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string v1, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/AttributePSVI;

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method protected getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    return-object v0
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v1, "ELEMENT_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ElementPSVI;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "entityResolver":Lorg/xml/sax/EntityResolver;
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .local v1, "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-eqz v2, :cond_1

    check-cast v1, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    .end local v1    # "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .restart local v1    # "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :cond_1
    instance-of v2, v1, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    .end local v1    # "xmlEntityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "errorHandler":Lorg/xml/sax/ErrorHandler;
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .local v1, "xmlErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .end local v1    # "xmlErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 8
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v5, "http://xml.org/sax/features/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "http://xml.org/sax/features/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v5, v6

    .local v2, "suffixLength":I
    const-string v5, "namespace-prefixes"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_1

    const-string v5, "namespace-prefixes"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    .end local v2    # "suffixLength":I
    :cond_0
    :goto_0
    return v3

    .restart local v2    # "suffixLength":I
    :cond_1
    const-string v5, "string-interning"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_2

    const-string v5, "string-interning"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    const-string v5, "is-standalone"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_3

    const-string v5, "is-standalone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    goto :goto_0

    :cond_3
    const-string v5, "xml-1.1"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_4

    const-string v5, "xml-1.1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    instance-of v3, v5, Lmf/org/apache/xerces/parsers/XML11Configurable;

    goto :goto_0

    :cond_4
    const-string v5, "lexical-handler/parameter-entities"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_5

    const-string v5, "lexical-handler/parameter-entities"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    goto :goto_0

    :cond_5
    const-string v5, "resolve-dtd-uris"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_6

    const-string v5, "resolve-dtd-uris"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    goto :goto_0

    :cond_6
    const-string v5, "xmlns-uris"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_7

    const-string v5, "xmlns-uris"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    goto :goto_0

    :cond_7
    const-string v5, "unicode-normalization-checking"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_8

    const-string v5, "unicode-normalization-checking"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v4

    goto/16 :goto_0

    :cond_8
    const-string v5, "use-entity-resolver2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_9

    const-string v5, "use-entity-resolver2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    goto/16 :goto_0

    :cond_9
    const-string v5, "use-attributes2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_a

    const-string v5, "use-attributes2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_a
    const-string v5, "use-locator2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_b

    const-string v5, "use-locator2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v2    # "suffixLength":I
    :cond_b
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v5

    if-nez v5, :cond_c

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "feature-not-recognized"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v6, v7, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "feature-not-supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v6, v7, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "http://xml.org/sax/properties/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, "suffixLength":I
    const-string v3, "document-xml-version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v3, "document-xml-version"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    .end local v2    # "suffixLength":I
    :goto_0
    return-object v3

    .restart local v2    # "suffixLength":I
    :cond_0
    const-string v3, "lexical-handler"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v3, "lexical-handler"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "declaration-handler"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string v3, "declaration-handler"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "dom-node"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    const-string v3, "dom-node"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "dom-node-read-not-supported"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "suffixLength":I
    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "property-not-recognized"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .end local v1    # "identifier":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v1    # "identifier":Ljava/lang/String;
    :cond_4
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "property-not-supported"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "nonNormalizedText"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v3, :cond_0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .local v1, "publicId":Ljava/lang/String;
    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v3, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    .local v2, "systemId":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v3, p1, v1, v2}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "publicId":Ljava/lang/String;
    .end local v2    # "systemId":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "publicId":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1    # "publicId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v3, v4, p1, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "source":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_start_0
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/io/CharConversionException;

    if-eqz v4, :cond_2

    :cond_0
    new-instance v2, Lorg/xml/sax/ext/Locator2Impl;

    invoke-direct {v2}, Lorg/xml/sax/ext/Locator2Impl;-><init>()V

    .local v2, "locatorImpl":Lorg/xml/sax/ext/Locator2Impl;
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setXMLVersion(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setLineNumber(I)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setColumnNumber(I)V

    if-nez v1, :cond_1

    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    :goto_0
    throw v4

    :cond_1
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v2    # "locatorImpl":Lorg/xml/sax/ext/Locator2Impl;
    :cond_2
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_3

    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    if-nez v1, :cond_5

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_6

    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_7

    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 7
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .end local v3    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/io/CharConversionException;

    if-eqz v4, :cond_2

    :cond_0
    new-instance v2, Lorg/xml/sax/ext/Locator2Impl;

    invoke-direct {v2}, Lorg/xml/sax/ext/Locator2Impl;-><init>()V

    .local v2, "locatorImpl":Lorg/xml/sax/ext/Locator2Impl;
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setXMLVersion(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setLineNumber(I)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/xml/sax/ext/Locator2Impl;->setColumnNumber(I)V

    if-nez v1, :cond_1

    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    :goto_0
    throw v4

    :cond_1
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v2    # "locatorImpl":Lorg/xml/sax/ext/Locator2Impl;
    :cond_2
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_3

    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    if-nez v1, :cond_5

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    instance-of v4, v1, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_6

    check-cast v1, Lorg/xml/sax/SAXException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_7

    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;->reset()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    const-string v0, "1.0"

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method protected setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .locals 6
    .param p1, "handler"    # Lorg/xml/sax/ext/DeclHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "property-not-parsing-supported"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "http://xml.org/sax/properties/declaration-handler"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 0
    .param p1, "documentHandler"    # Lorg/xml/sax/DocumentHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 7
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .local v3, "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    if-eqz v4, :cond_1

    instance-of v4, p1, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v4, :cond_1

    instance-of v4, v3, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    move-object v1, v0

    .local v1, "er2w":Lmf/org/apache/xerces/util/EntityResolver2Wrapper;
    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    .end local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    .end local v1    # "er2w":Lmf/org/apache/xerces/util/EntityResolver2Wrapper;
    .end local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :goto_0
    return-void

    .restart local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .restart local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v6, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    .end local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    invoke-direct {v6, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .end local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .restart local v3    # "xer":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .restart local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    :cond_1
    instance-of v4, v3, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-eqz v4, :cond_2

    move-object v0, v3

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    move-object v2, v0

    .local v2, "erw":Lmf/org/apache/xerces/util/EntityResolverWrapper;
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    .end local v2    # "erw":Lmf/org/apache/xerces/util/EntityResolverWrapper;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v6, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    invoke-direct {v6, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 6
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .local v2, "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    instance-of v3, v2, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    move-object v1, v0

    .local v1, "ehw":Lmf/org/apache/xerces/util/ErrorHandlerWrapper;
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .end local v1    # "ehw":Lmf/org/apache/xerces/util/ErrorHandlerWrapper;
    .end local v2    # "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :goto_0
    return-void

    .restart local v2    # "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/error-handler"

    new-instance v5, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-direct {v5, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "xeh":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    const-string v3, "http://xml.org/sax/features/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "http://xml.org/sax/features/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, "suffixLength":I
    const-string v3, "namespaces"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v3, "namespaces"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    .end local v2    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "suffixLength":I
    :cond_1
    const-string v3, "namespace-prefixes"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string v3, "namespace-prefixes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "suffixLength":I
    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "feature-not-recognized"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .end local v1    # "identifier":Ljava/lang/String;
    .restart local v2    # "suffixLength":I
    :cond_2
    :try_start_1
    const-string v3, "string-interning"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    const-string v3, "string-interning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p2, :cond_0

    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "false-not-supported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string v3, "lexical-handler/parameter-entities"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_4

    const-string v3, "lexical-handler/parameter-entities"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    goto :goto_0

    :cond_4
    const-string v3, "resolve-dtd-uris"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_5

    const-string v3, "resolve-dtd-uris"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    goto/16 :goto_0

    :cond_5
    const-string v3, "unicode-normalization-checking"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string v3, "unicode-normalization-checking"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p2, :cond_0

    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "true-not-supported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string v3, "xmlns-uris"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_7

    const-string v3, "xmlns-uris"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    goto/16 :goto_0

    :cond_7
    const-string v3, "use-entity-resolver2"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_8

    const-string v3, "use-entity-resolver2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    if-eq p2, v3, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "is-standalone"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_9

    const-string v3, "is-standalone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_9
    const-string v3, "use-attributes2"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_a

    const-string v3, "use-attributes2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    const-string v3, "use-locator2"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_b

    const-string v3, "use-locator2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    const-string v3, "xml-1.1"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_d

    const-string v3, "xml-1.1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "feature-read-only"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "suffixLength":I
    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v1    # "identifier":Ljava/lang/String;
    :cond_e
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "feature-not-supported"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 6
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "property-not-parsing-supported"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "http://xml.org/sax/properties/lexical-handler"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    const-string v3, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "http://xml.org/sax/properties/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, "suffixLength":I
    const-string v3, "lexical-handler"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v3, "lexical-handler"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "suffixLength":I
    :goto_0
    return-void

    .restart local v2    # "suffixLength":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "incompatible-class"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string v8, "org.xml.sax.ext.LexicalHandler"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "suffixLength":I
    :catch_1
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "property-not-recognized"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .end local v1    # "identifier":Ljava/lang/String;
    .restart local v2    # "suffixLength":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    :try_start_3
    const-string v3, "declaration-handler"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v3, "declaration-handler"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    :try_start_4
    check-cast p2, Lorg/xml/sax/ext/DeclHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_5
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "incompatible-class"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string v8, "org.xml.sax.ext.DeclHandler"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v3, "dom-node"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string v3, "dom-node"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "document-xml-version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_4

    const-string v3, "document-xml-version"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "property-read-only"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "suffixLength":I
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .end local p2    # "value":Ljava/lang/Object;
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v1    # "identifier":Ljava/lang/String;
    :cond_5
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "property-not-supported"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
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
    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    new-instance v2, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v1}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v2, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->startNamespaceMapping()V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    .local v2, "len":I
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    if-nez v5, :cond_6

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_3

    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .local v4, "uri":Ljava/lang/String;
    :goto_1
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v5, :cond_a

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .local v3, "localpart":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {v5, v4, v3, v6, v7}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .end local v3    # "localpart":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v1, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    :cond_4
    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_6
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    if-nez v5, :cond_1

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v1, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v6, :cond_8

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    const-string v6, ""

    iput-object v6, v5, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    const-string v6, ""

    iput-object v6, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    const-string v6, ""

    iput-object v6, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v1, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_9
    const-string v4, ""

    goto :goto_1

    .restart local v4    # "uri":Ljava/lang/String;
    :cond_a
    const-string v3, ""
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v4    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v5, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "[dtd]"

    invoke-virtual {p0, v0, v1, v1, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
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
    if-eqz p4, :cond_1

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ENTITY_SKIPPED"

    invoke-interface {p4, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected final startNamespaceMapping()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v2, 0x0

    .local v2, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "uri":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .end local v1    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "i":I
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v3, :cond_2

    const-string v4, ""

    :goto_1
    invoke-interface {v5, v2, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v3

    goto :goto_1
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
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
    if-eqz p4, :cond_1

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ENTITY_SKIPPED"

    invoke-interface {p4, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v3, :cond_0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .local v1, "publicId":Ljava/lang/String;
    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v3, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    .local v2, "systemId":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v3, p1, v1, v2, p3}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "publicId":Ljava/lang/String;
    .end local v2    # "systemId":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "publicId":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1    # "publicId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
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
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    const-string v0, "yes"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    return-void
.end method
