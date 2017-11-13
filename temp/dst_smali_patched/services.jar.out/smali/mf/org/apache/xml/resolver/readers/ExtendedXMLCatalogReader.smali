.class public Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;
.source "ExtendedXMLCatalogReader.java"


# static fields
.field public static final extendedNamespaceName:Ljava/lang/String; = "http://nwalsh.com/xcatalog/1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->inExtensionNamespace()Z

    move-result v5

    .local v5, "inExtension":Z
    const/4 v4, -0x1

    .local v4, "entryType":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .local v3, "entryArgs":Ljava/util/Vector;
    if-eqz p1, :cond_0

    const-string v7, "http://nwalsh.com/xcatalog/1.0"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v5, :cond_0

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "popURI":Ljava/lang/String;
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "baseURI":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget v4, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v8, 0x4

    const-string v9, "(reset) xml:base"

    invoke-virtual {v7, v8, v9, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .local v1, "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v7, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v6    # "popURI":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "baseURI":Ljava/lang/String;
    .restart local v6    # "popURI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v7, v10, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry (rbase)"

    invoke-virtual {v7, v10, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->inExtensionNamespace()Z

    move-result v5

    .local v5, "inExtension":Z
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const/4 v4, -0x1

    .local v4, "entryType":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .local v3, "entryArgs":Ljava/util/Vector;
    if-eqz p1, :cond_2

    const-string v6, "http://nwalsh.com/xcatalog/1.0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    const-string v6, "xml:base"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "xml:base"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "baseURI":Ljava/lang/String;
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "xml:base"

    invoke-virtual {v6, v7, v8, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .local v1, "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v6, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_0
    :goto_0
    const/4 v4, -0x1

    new-instance v3, Ljava/util/Vector;

    .end local v3    # "entryArgs":Ljava/util/Vector;
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .end local v0    # "baseURI":Ljava/lang/String;
    .restart local v3    # "entryArgs":Ljava/util/Vector;
    :goto_1
    const-string v6, "uriSuffix"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "suffix"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget v4, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    const-string v6, "suffix"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "uriSuffix"

    const-string v9, "suffix"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-ltz v4, :cond_2

    :try_start_1
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .restart local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v6, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_2
    :goto_3
    return-void

    .restart local v0    # "baseURI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry (base)"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v2    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v6, "systemSuffix"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "suffix"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget v4, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    const-string v6, "suffix"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "systemSuffix"

    const-string v9, "suffix"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    .restart local v2    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
