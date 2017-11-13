.class public final Lmf/org/apache/xerces/util/SynchronizedSymbolTable;
.super Lmf/org/apache/xerces/util/SymbolTable;
.source "SynchronizedSymbolTable.java"


# instance fields
.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 2
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsSymbol([CII)Z
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
