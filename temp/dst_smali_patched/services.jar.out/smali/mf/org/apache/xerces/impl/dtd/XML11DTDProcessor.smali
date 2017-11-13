.class public Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;
.super Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
.source "XML11DTDProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 0
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 0
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .param p3, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p4, "entityResolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method


# virtual methods
.method protected createDTDScanner(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p3, "entityManager"    # Lmf/org/apache/xerces/impl/XMLEntityManager;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    return-object v0
.end method

.method protected getScannerVersion()S
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method protected isValidName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidNmtoken(Ljava/lang/String;)Z
    .locals 1
    .param p1, "nmtoken"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
