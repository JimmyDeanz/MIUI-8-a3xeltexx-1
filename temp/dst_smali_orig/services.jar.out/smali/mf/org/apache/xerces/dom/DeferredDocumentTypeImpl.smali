.class public Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;
.super Lmf/org/apache/xerces/dom/DocumentTypeImpl;
.source "DeferredDocumentTypeImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x1e268db160e6dd65L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncData(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v3

    .local v3, "orig":Z
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncChildren(Z)V

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .local v4, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    new-instance v6, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v6, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v6, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v6, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v6, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v6, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    const/4 v1, 0x0

    .local v1, "last":Lmf/org/apache/xerces/dom/DeferredNode;
    iget v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    .local v0, "index":I
    :goto_0
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->setReadOnly(ZZ)V

    return-void

    :cond_0
    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v2

    .local v2, "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-interface {v2}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeType()S

    move-result v5

    .local v5, "type":I
    sparse-switch v5, :sswitch_data_0

    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", class = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :sswitch_1
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v6, v6, Lmf/org/apache/xerces/dom/DocumentImpl;->allowGrammarAccess:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_0
        0xc -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method protected synchronizeData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .local v1, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->name:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->publicID:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->systemID:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    .local v0, "extraDataIndex":I
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void
.end method
