.class public Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.super Ljava/lang/Object;
.source "XMLGrammarPoolImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final TABLE_SIZE:I = 0xb


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

.field protected fPoolIsLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    const/16 v0, 0xb

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v0, p1, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .end local v0    # "i":I
    :cond_0
    return-void

    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 6
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .local v1, "hash":I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v5

    rem-int v2, v3, v5

    .local v2, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v2

    .local v0, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v0, :cond_0

    monitor-exit v4

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    .end local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1
    .param p1, "desc1"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .param p2, "desc2"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 6
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .local v1, "hash":I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v5

    rem-int v2, v3, v5

    .local v2, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v2

    .local v0, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v0, :cond_0

    monitor-exit v4

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v4

    goto :goto_1

    .end local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    :cond_1
    :try_start_1
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public lockPool()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 7
    .param p1, "grammar"    # Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    iget-boolean v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-nez v4, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v5

    :try_start_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    .local v0, "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    .local v2, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v2

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v6, v6

    rem-int v3, v4, v6

    .local v3, "index":I
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v4, v3

    .local v1, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .end local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v4, v4, v3

    invoke-direct {v1, v2, v0, p1, v4}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;-><init>(ILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V

    .restart local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v1, v4, v3

    iget v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v5

    .end local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .end local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v2    # "hash":I
    .end local v3    # "index":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v2    # "hash":I
    .restart local v3    # "index":I
    :cond_1
    iget v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v4, v2, :cond_2

    iget-object v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object p1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v5

    goto :goto_1

    .end local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .end local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v2    # "hash":I
    .end local v3    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .restart local v1    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v2    # "hash":I
    .restart local v3    # "index":I
    :cond_2
    :try_start_1
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 8
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    const/4 v4, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    .local v1, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v7, v7

    rem-int v2, v5, v7

    .local v2, "index":I
    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v5, v2

    .local v0, "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    const/4 v3, 0x0

    .local v3, "prev":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :goto_0
    if-nez v0, :cond_0

    monitor-exit v6

    :goto_1
    return-object v4

    :cond_0
    iget v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v5, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_1

    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v5, v3, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    :goto_2
    iget-object v4, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    .local v4, "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    const/4 v5, 0x0

    iput-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    iget v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v6

    goto :goto_1

    .end local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "prev":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v4    # "tempGrammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "entry":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "prev":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v7, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v7, v5, v2

    goto :goto_2

    :cond_2
    move-object v3, v0

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 10
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v1, v7

    .local v1, "grammarSize":I
    iget v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v5, v7, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .local v5, "tempGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    const/4 v3, 0x0

    .local v3, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    new-array v6, v3, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .local v6, "toReturn":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v6, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v8

    return-object v6

    .end local v6    # "toReturn":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v7, v2

    .local v0, "e":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    move v4, v3

    .end local v3    # "pos":I
    .local v4, "pos":I
    :goto_1
    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_1
    iget-object v7, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v7}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget-object v7, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    aput-object v7, v5, v4

    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v4, v3

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .end local v0    # "e":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .end local v1    # "grammarSize":I
    .end local v2    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "tempGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "e":Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    .restart local v1    # "grammarSize":I
    .restart local v2    # "i":I
    .restart local v4    # "pos":I
    .restart local v5    # "tempGrammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_2
    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_2
.end method

.method public unlockPool()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method
