.class public abstract Lmf/org/apache/xerces/parsers/BasicParserConfiguration;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "BasicParserConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;


# static fields
.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fRecognizedFeatures:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fRecognizedProperties:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v2, v0, v5

    const-string v2, "http://xml.org/sax/features/validation"

    aput-object v2, v0, v6

    const-string v2, "http://xml.org/sax/features/namespaces"

    aput-object v2, v0, v7

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    aput-object v2, v0, v8

    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v2, v0, v9

    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://xml.org/sax/features/validation"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://xml.org/sax/features/namespaces"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://xml.org/sax/features/external-general-entities"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "http://xml.org/sax/properties/xml-string"

    aput-object v2, v1, v5

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v1, v6

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v2, v1, v7

    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v2, v1, v8

    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .restart local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 8
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v3

    .local v3, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    .local v4, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v3

    if-lt v1, v7, :cond_4

    .end local v1    # "i":I
    :cond_2
    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    aget-object v2, v4, v1

    .local v2, "propertyId":Ljava/lang/String;
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_3

    invoke-super {p0, v2, v6}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "propertyId":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_4
    aget-object v0, v3, v1

    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, "state":Ljava/lang/Boolean;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-super {p0, v0, v7}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 4
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .local v0, "suffixLength":I
    const-string v2, "internal/parser-settings"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v2, "internal/parser-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v2, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://xml.org/sax/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .local v0, "suffixLength":I
    const-string v2, "xml-string"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v2, "xml-string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public abstract parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 2
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2
    .param p1, "resolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
