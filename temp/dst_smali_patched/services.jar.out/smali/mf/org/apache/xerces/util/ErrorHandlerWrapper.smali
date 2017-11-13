.class public Lmf/org/apache/xerces/util/ErrorHandlerWrapper;
.super Ljava/lang/Object;
.source "ErrorHandlerWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fErrorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method protected static createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;
    .locals 7
    .param p0, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;

    .prologue
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v5

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    return-object v0
.end method

.method protected static createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .locals 7
    .param p0, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v3

    .local v3, "fPublicId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .local v1, "fExpandedSystemId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    .local v2, "fLineNumber":I
    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v0

    .local v0, "fColumnNumber":I
    new-instance v4, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;

    invoke-direct {v4, v3, v1, v0, v2}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .local v4, "location":Lmf/org/apache/xerces/xni/XMLLocator;
    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6, p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v5
.end method

.method protected static createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;
    .locals 2
    .param p0, "exception"    # Lorg/xml/sax/SAXException;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    invoke-static {p3}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    .local v1, "saxException":Lorg/xml/sax/SAXParseException;
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_0
    return-void

    .restart local v1    # "saxException":Lorg/xml/sax/SAXParseException;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v2

    throw v2

    .end local v0    # "e":Lorg/xml/sax/SAXParseException;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v2

    throw v2
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    invoke-static {p3}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    .local v1, "saxException":Lorg/xml/sax/SAXParseException;
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, v1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_0
    return-void

    .restart local v1    # "saxException":Lorg/xml/sax/SAXParseException;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v2

    throw v2

    .end local v0    # "e":Lorg/xml/sax/SAXParseException;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v2

    throw v2
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    invoke-static {p3}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    .local v1, "saxException":Lorg/xml/sax/SAXParseException;
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, v1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_0
    return-void

    .restart local v1    # "saxException":Lorg/xml/sax/SAXParseException;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v2

    throw v2

    .end local v0    # "e":Lorg/xml/sax/SAXParseException;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-static {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v2

    throw v2
.end method
