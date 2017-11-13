.class public Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
.super Ljava/lang/Object;
.source "XSGrammarBucket.java"


# instance fields
.field fGrammarRegistry:Ljava/util/Hashtable;

.field fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method


# virtual methods
.method public getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    goto :goto_0
.end method

.method public getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 7

    .prologue
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    add-int v0, v6, v5

    .local v0, "count":I
    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v1, "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "schemas":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v5, :cond_0

    add-int/lit8 v5, v0, -0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v6, v1, v5

    :cond_0
    return-object v1

    .end local v0    # "count":I
    .end local v1    # "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v2    # "i":I
    .end local v4    # "schemas":Ljava/util/Enumeration;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .restart local v0    # "count":I
    .restart local v1    # "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .restart local v2    # "i":I
    .restart local v4    # "schemas":Ljava/util/Enumeration;
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v5, v1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 2
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z
    .locals 11
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "deep"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    .local v5, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v5, :cond_1

    if-ne v5, p1, :cond_0

    move v8, v9

    :cond_0
    :goto_0
    return v8

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    move v8, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .local v0, "currGrammars":Ljava/util/Vector;
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    move v8, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .local v1, "grammars":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v3, v10, :cond_4

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_2
    if-gez v3, :cond_9

    move v8, v9

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v6, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v10, v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    .local v7, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v7, :cond_8

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v2

    .local v2, "gs":Ljava/util/Vector;
    if-nez v2, :cond_6

    .end local v2    # "gs":Ljava/util/Vector;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v2    # "gs":Ljava/util/Vector;
    :cond_6
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "j":I
    :goto_3
    if-ltz v4, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    check-cast v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .restart local v7    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v1, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .end local v2    # "gs":Ljava/util/Vector;
    .end local v4    # "j":I
    :cond_8
    if-eq v7, v6, :cond_5

    goto :goto_0

    .end local v6    # "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v7    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z
    .locals 10
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "deep"    # Z
    .param p3, "ignoreConflict"    # Z

    .prologue
    const/4 v9, 0x1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v8

    :goto_0
    return v8

    :cond_0
    iget-object v8, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    .local v5, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v5, :cond_1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_1
    if-nez p2, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .local v0, "currGrammars":Ljava/util/Vector;
    if-nez v0, :cond_3

    move v8, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .local v1, "grammars":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v3, v8, :cond_4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_2
    if-gez v3, :cond_9

    move v8, v9

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v6, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    .local v7, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v7, :cond_8

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v2

    .local v2, "gs":Ljava/util/Vector;
    if-nez v2, :cond_6

    .end local v2    # "gs":Ljava/util/Vector;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v2    # "gs":Ljava/util/Vector;
    :cond_6
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "j":I
    :goto_4
    if-ltz v4, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    check-cast v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .restart local v7    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v1, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "gs":Ljava/util/Vector;
    .end local v4    # "j":I
    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v6    # "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v7    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method
