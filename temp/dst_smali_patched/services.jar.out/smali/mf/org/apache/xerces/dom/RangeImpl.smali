.class public Lmf/org/apache/xerces/dom/RangeImpl;
.super Ljava/lang/Object;
.source "RangeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ranges/Range;


# static fields
.field static final CLONE_CONTENTS:I = 0x2

.field static final DELETE_CONTENTS:I = 0x3

.field static final EXTRACT_CONTENTS:I = 0x1


# instance fields
.field private fDeleteNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEndContainer:Lmf/org/w3c/dom/Node;

.field private fEndOffset:I

.field private fInsertNode:Lmf/org/w3c/dom/Node;

.field private fInsertedFromRange:Z

.field private fRemoveChild:Lmf/org/w3c/dom/Node;

.field private fSplitNode:Lmf/org/w3c/dom/Node;

.field private fStartContainer:Lmf/org/w3c/dom/Node;

.field private fStartOffset:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;)V
    .locals 2
    .param p1, "document"    # Lmf/org/apache/xerces/dom/DocumentImpl;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    return-void
.end method

.method private getRootContainer(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "container"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I

    .prologue
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .end local p1    # "container":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "container":Lmf/org/w3c/dom/Node;
    :cond_1
    if-ltz p2, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_2

    if-gtz p2, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method private hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z
    .locals 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->getRootContainer(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "rootContainer":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z
    .locals 2
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLegalContainer(Lmf/org/w3c/dom/Node;)Z
    .locals 2
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    :sswitch_0
    return v0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private traverseCharacterDataNode(Lmf/org/w3c/dom/Node;ZI)Lmf/org/w3c/dom/Node;
    .locals 7
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "isLeft"    # Z
    .param p3, "how"    # I

    .prologue
    const/4 v6, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .local v4, "txtValue":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartOffset()I

    move-result v2

    .local v2, "offset":I
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "newNodeValue":Ljava/lang/String;
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "oldNodeValue":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x2

    if-eq p3, v5, :cond_0

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x3

    if-ne p3, v5, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .end local v1    # "newNodeValue":Ljava/lang/String;
    .end local v2    # "offset":I
    .end local v3    # "oldNodeValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getEndOffset()I

    move-result v2

    .restart local v2    # "offset":I
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "newNodeValue":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "oldNodeValue":Ljava/lang/String;
    goto :goto_0

    :cond_2
    invoke-interface {p1, v6}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "newNode":Lmf/org/w3c/dom/Node;
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private traverseCommonAncestors(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 9
    .param p1, "startAncestor"    # Lmf/org/w3c/dom/Node;
    .param p2, "endAncestor"    # Lmf/org/w3c/dom/Node;
    .param p3, "how"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v8, 0x3

    if-eq p3, v8, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v3

    :cond_0
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .local v4, "n":Lmf/org/w3c/dom/Node;
    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "commonParent":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v7

    .local v7, "startOffset":I
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v2

    .local v2, "endOffset":I
    add-int/lit8 v7, v7, 0x1

    sub-int v0, v2, v7

    .local v0, "cnt":I
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .local v6, "sibling":Lmf/org/w3c/dom/Node;
    :goto_0
    if-gtz v0, :cond_4

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    const/4 v8, 0x2

    if-eq p3, v8, :cond_3

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setStartAfter(Lmf/org/w3c/dom/Node;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_3
    return-object v3

    :cond_4
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "nextSibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v6, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-eqz v3, :cond_5

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_5
    move-object v6, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private traverseCommonEndContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 7
    .param p1, "startAncestor"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v6, 0x3

    if-eq p2, v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .local v2, "n":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v6}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v4

    .local v4, "startIdx":I
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    sub-int v0, v6, v4

    .local v0, "cnt":I
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-gtz v0, :cond_3

    const/4 v6, 0x2

    if-eq p2, v6, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setStartAfter(Lmf/org/w3c/dom/Node;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_2
    return-object v1

    :cond_3
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .local v3, "sibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "xferNode":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_4

    invoke-interface {v1, v5}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move-object v2, v3

    goto :goto_0
.end method

.method private traverseCommonStartContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 9
    .param p1, "endAncestor"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v6, 0x3

    if-eq p2, v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v2

    :cond_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    .local v3, "n":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_1

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v6}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    .local v1, "endIdx":I
    iget v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int v0, v1, v6

    .local v0, "cnt":I
    if-gtz v0, :cond_3

    if-eq p2, v8, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setEndBefore(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_1
    if-gtz v0, :cond_4

    if-eq p2, v8, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setEndBefore(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .local v4, "sibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "xferNode":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lmf/org/w3c/dom/DocumentFragment;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lmf/org/w3c/dom/DocumentFragment;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_5
    add-int/lit8 v0, v0, -0x1

    move-object v3, v4

    goto :goto_1
.end method

.method private traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 14
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    iget-object v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    iget-boolean v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v10, :cond_2

    new-instance v10, Lmf/org/w3c/dom/DOMException;

    const/16 v11, 0xb

    const-string v12, "http://www.w3.org/dom/DOMTR"

    const-string v13, "INVALID_STATE_ERR"

    invoke-static {v12, v13, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    :cond_2
    iget-object v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v9, v10, :cond_3

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseSameContainer(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .local v2, "endContainerDepth":I
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    .local v0, "c":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "p":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v5, :cond_4

    const/4 v7, 0x0

    .local v7, "startContainerDepth":I
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_6

    sub-int v1, v7, v2

    .local v1, "depthDiff":I
    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    .local v8, "startNode":Lmf/org/w3c/dom/Node;
    :goto_3
    if-gtz v1, :cond_8

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    .local v3, "endNode":Lmf/org/w3c/dom/Node;
    :goto_4
    if-ltz v1, :cond_9

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .local v6, "sp":Lmf/org/w3c/dom/Node;
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .local v4, "ep":Lmf/org/w3c/dom/Node;
    :goto_5
    if-ne v6, v4, :cond_a

    invoke-direct {p0, v8, v3, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCommonAncestors(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_0

    .end local v1    # "depthDiff":I
    .end local v3    # "endNode":Lmf/org/w3c/dom/Node;
    .end local v4    # "ep":Lmf/org/w3c/dom/Node;
    .end local v6    # "sp":Lmf/org/w3c/dom/Node;
    .end local v7    # "startContainerDepth":I
    .end local v8    # "startNode":Lmf/org/w3c/dom/Node;
    :cond_4
    iget-object v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v5, v9, :cond_5

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCommonStartContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-object v0, v5

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    goto :goto_1

    .restart local v7    # "startContainerDepth":I
    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v5, v9, :cond_7

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCommonEndContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move-object v0, v5

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    goto :goto_2

    .restart local v1    # "depthDiff":I
    .restart local v8    # "startNode":Lmf/org/w3c/dom/Node;
    :cond_8
    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .restart local v3    # "endNode":Lmf/org/w3c/dom/Node;
    :cond_9
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .restart local v4    # "ep":Lmf/org/w3c/dom/Node;
    .restart local v6    # "sp":Lmf/org/w3c/dom/Node;
    :cond_a
    move-object v8, v6

    move-object v3, v4

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_5
.end method

.method private traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 5
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    move-object p1, v0

    .end local p1    # "n":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "n":Lmf/org/w3c/dom/Node;
    :pswitch_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x3

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "HIERARCHY_REQUEST_ERR"

    invoke-static {v3, v4, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object p1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 12
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartOffset()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lmf/org/apache/xerces/dom/RangeImpl;->getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .local v4, "next":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-eq v4, v9, :cond_1

    move v3, v7

    .local v3, "isFullySelected":Z
    :goto_0
    if-ne v4, p1, :cond_2

    invoke-direct {p0, v4, v3, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_0
    :goto_1
    return-object v2

    .end local v3    # "isFullySelected":Z
    :cond_1
    move v3, v8

    goto :goto_0

    .restart local v3    # "isFullySelected":Z
    :cond_2
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .local v6, "parent":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v6, v8, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .local v2, "clonedParent":Lmf/org/w3c/dom/Node;
    :goto_2
    if-nez v6, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "nextSibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v4, v3, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "clonedChild":Lmf/org/w3c/dom/Node;
    if-eq p2, v11, :cond_4

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    const/4 v3, 0x1

    move-object v4, v5

    .end local v0    # "clonedChild":Lmf/org/w3c/dom/Node;
    .end local v5    # "nextSibling":Lmf/org/w3c/dom/Node;
    :cond_5
    if-nez v4, :cond_3

    if-eq v6, p1, :cond_0

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, v6, v8, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "clonedGrandParent":Lmf/org/w3c/dom/Node;
    if-eq p2, v11, :cond_6

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_6
    move-object v2, v1

    goto :goto_2
.end method

.method private traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "isFullySelected"    # Z
    .param p3, "isLeft"    # Z
    .param p4, "how"    # I

    .prologue
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p4}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .local v0, "nodeType":S
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCharacterDataNode(Lmf/org/w3c/dom/Node;ZI)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p4}, Lmf/org/apache/xerces/dom/RangeImpl;->traversePartiallySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private traversePartiallySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 1
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 11
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {p0, v8, v9}, Lmf/org/apache/xerces/dom/RangeImpl;->getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .local v4, "next":Lmf/org/w3c/dom/Node;
    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-eq v4, v8, :cond_1

    const/4 v3, 0x1

    .local v3, "isFullySelected":Z
    :goto_0
    if-ne v4, p1, :cond_2

    invoke-direct {p0, v4, v3, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_0
    :goto_1
    return-object v2

    .end local v3    # "isFullySelected":Z
    :cond_1
    move v3, v7

    goto :goto_0

    .restart local v3    # "isFullySelected":Z
    :cond_2
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "parent":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v5, v7, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .local v2, "clonedParent":Lmf/org/w3c/dom/Node;
    :goto_2
    if-nez v5, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .local v6, "prevSibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v4, v3, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "clonedChild":Lmf/org/w3c/dom/Node;
    if-eq p2, v10, :cond_4

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v2, v0, v8}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    const/4 v3, 0x1

    move-object v4, v6

    .end local v0    # "clonedChild":Lmf/org/w3c/dom/Node;
    .end local v6    # "prevSibling":Lmf/org/w3c/dom/Node;
    :cond_5
    if-nez v4, :cond_3

    if-eq v5, p1, :cond_0

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v5, v7, v7, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "clonedGrandParent":Lmf/org/w3c/dom/Node;
    if-eq p2, v10, :cond_6

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_6
    move-object v2, v1

    goto :goto_2
.end method

.method private traverseSameContainer(I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 12
    .param p1, "how"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v1

    :cond_0
    iget v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ne v8, v9, :cond_2

    .end local v1    # "frag":Lmf/org/w3c/dom/DocumentFragment;
    :cond_1
    :goto_0
    return-object v1

    .restart local v1    # "frag":Lmf/org/w3c/dom/DocumentFragment;
    :cond_2
    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    .local v3, "nodeType":S
    const/4 v8, 0x3

    if-eq v3, v8, :cond_3

    const/4 v8, 0x4

    if-eq v3, v8, :cond_3

    const/16 v8, 0x8

    if-eq v3, v8, :cond_3

    const/4 v8, 0x7

    if-ne v3, v8, :cond_9

    :cond_3
    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .local v4, "s":Ljava/lang/String;
    iget v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "sub":Ljava/lang/String;
    const/4 v8, 0x2

    if-eq p1, v8, :cond_4

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    check-cast v8, Lmf/org/apache/xerces/dom/CharacterDataImpl;

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v11, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->deleteData(II)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_4
    const/4 v8, 0x3

    if-ne p1, v8, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_6
    const/4 v8, 0x4

    if-ne v3, v8, :cond_7

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_7
    const/16 v8, 0x8

    if-ne v3, v8, :cond_8

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_8
    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-object v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "sub":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-direct {p0, v8, v9}, Lmf/org/apache/xerces/dom/RangeImpl;->getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .local v2, "n":Lmf/org/w3c/dom/Node;
    iget v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int v0, v8, v9

    .local v0, "cnt":I
    :goto_1
    if-gtz v0, :cond_a

    const/4 v8, 0x2

    if-eq p1, v8, :cond_1

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "sibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v2, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    .local v7, "xferNode":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_b

    invoke-interface {v1, v7}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_b
    add-int/lit8 v0, v0, -0x1

    move-object v2, v5

    goto :goto_1
.end method


# virtual methods
.method checkIndex(Lmf/org/w3c/dom/Node;I)V
    .locals 6
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    if-gez p2, :cond_0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INDEX_SIZE_ERR"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INDEX_SIZE_ERR"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-le p2, v1, :cond_3

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INDEX_SIZE_ERR"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public cloneContents()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    return-object v0
.end method

.method public cloneRange()Lmf/org/w3c/dom/ranges/Range;
    .locals 6

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v1, :cond_0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DocumentImpl;->createRange()Lmf/org/w3c/dom/ranges/Range;

    move-result-object v0

    .local v0, "range":Lmf/org/w3c/dom/ranges/Range;
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/ranges/Range;->setStart(Lmf/org/w3c/dom/Node;I)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/ranges/Range;->setEnd(Lmf/org/w3c/dom/Node;I)V

    return-object v0
.end method

.method public collapse(Z)V
    .locals 5
    .param p1, "toStart"    # Z

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    goto :goto_0
.end method

.method public compareBoundaryPoints(SLmf/org/w3c/dom/ranges/Range;)S
    .locals 17
    .param p1, "how"    # S
    .param p2, "sourceRange"    # Lmf/org/w3c/dom/ranges/Range;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v12, v12, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v12, :cond_0

    new-instance v12, Lmf/org/w3c/dom/DOMException;

    const/16 v13, 0xb

    const-string v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "INVALID_STATE_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v13

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    if-eq v12, v13, :cond_1

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v12

    if-nez v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v13

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    if-eq v12, v13, :cond_3

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_3

    :cond_2
    new-instance v12, Lmf/org/w3c/dom/DOMException;

    const/4 v13, 0x4

    const-string v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "WRONG_DOCUMENT_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v12

    :cond_3
    if-nez p1, :cond_4

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .local v3, "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    .local v4, "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartOffset()I

    move-result v7

    .local v7, "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    .local v8, "offsetB":I
    :goto_0
    if-ne v3, v4, :cond_9

    if-ge v7, v8, :cond_7

    const/4 v12, 0x1

    :goto_1
    return v12

    .end local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    .end local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    .end local v7    # "offsetA":I
    .end local v8    # "offsetB":I
    :cond_4
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .restart local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    .restart local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartOffset()I

    move-result v7

    .restart local v7    # "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    .restart local v8    # "offsetB":I
    goto :goto_0

    .end local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    .end local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    .end local v7    # "offsetA":I
    .end local v8    # "offsetB":I
    :cond_5
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .restart local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    .restart local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndOffset()I

    move-result v7

    .restart local v7    # "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    .restart local v8    # "offsetB":I
    goto :goto_0

    .end local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    .end local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    .end local v7    # "offsetA":I
    .end local v8    # "offsetB":I
    :cond_6
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .restart local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    .restart local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndOffset()I

    move-result v7

    .restart local v7    # "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    .restart local v8    # "offsetB":I
    goto :goto_0

    :cond_7
    if-ne v7, v8, :cond_8

    const/4 v12, 0x0

    goto :goto_1

    :cond_8
    const/4 v12, -0x1

    goto :goto_1

    :cond_9
    move-object v1, v4

    .local v1, "c":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    .local v9, "p":Lmf/org/w3c/dom/Node;
    :goto_2
    if-nez v9, :cond_a

    move-object v1, v3

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    :goto_3
    if-nez v9, :cond_d

    const/4 v2, 0x0

    .local v2, "depthDiff":I
    move-object v6, v3

    .local v6, "n":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v6, :cond_10

    move-object v6, v4

    :goto_5
    if-nez v6, :cond_11

    :goto_6
    if-gtz v2, :cond_12

    :goto_7
    if-ltz v2, :cond_13

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v10

    .local v10, "pA":Lmf/org/w3c/dom/Node;
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    .local v11, "pB":Lmf/org/w3c/dom/Node;
    :goto_8
    if-ne v10, v11, :cond_14

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    :goto_9
    if-nez v6, :cond_15

    const/4 v12, -0x1

    goto :goto_1

    .end local v2    # "depthDiff":I
    .end local v6    # "n":Lmf/org/w3c/dom/Node;
    .end local v10    # "pA":Lmf/org/w3c/dom/Node;
    .end local v11    # "pB":Lmf/org/w3c/dom/Node;
    :cond_a
    if-ne v9, v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v5

    .local v5, "index":I
    if-gt v7, v5, :cond_b

    const/4 v12, 0x1

    goto :goto_1

    :cond_b
    const/4 v12, -0x1

    goto :goto_1

    .end local v5    # "index":I
    :cond_c
    move-object v1, v9

    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    goto :goto_2

    :cond_d
    if-ne v9, v4, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v5

    .restart local v5    # "index":I
    if-ge v5, v8, :cond_e

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v12, -0x1

    goto/16 :goto_1

    .end local v5    # "index":I
    :cond_f
    move-object v1, v9

    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    goto :goto_3

    .restart local v2    # "depthDiff":I
    .restart local v6    # "n":Lmf/org/w3c/dom/Node;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    goto :goto_4

    :cond_11
    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    goto :goto_5

    :cond_12
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_13
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .restart local v10    # "pA":Lmf/org/w3c/dom/Node;
    .restart local v11    # "pB":Lmf/org/w3c/dom/Node;
    :cond_14
    move-object v3, v10

    move-object v4, v11

    invoke-interface {v10}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    goto :goto_8

    :cond_15
    if-ne v6, v4, :cond_16

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_16
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    goto :goto_9
.end method

.method public deleteContents()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    return-void
.end method

.method deleteData(Lmf/org/w3c/dom/CharacterData;II)V
    .locals 1
    .param p1, "node"    # Lmf/org/w3c/dom/CharacterData;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2, p3}, Lmf/org/w3c/dom/CharacterData;->deleteData(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public detach()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeRange(Lmf/org/w3c/dom/ranges/Range;)V

    return-void
.end method

.method public extractContents()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsed()Z
    .locals 5

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommonAncestorContainer()Lmf/org/w3c/dom/Node;
    .locals 11

    .prologue
    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v6, :cond_0

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    const/16 v7, 0xb

    const-string v8, "http://www.w3.org/dom/DOMTR"

    const-string v9, "INVALID_STATE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "startV":Ljava/util/ArrayList;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    .local v2, "node":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "endV":Ljava/util/ArrayList;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    :goto_1
    if-nez v2, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "s":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "e":I
    const/4 v3, 0x0

    :goto_2
    if-ltz v4, :cond_1

    if-gez v0, :cond_4

    :cond_1
    check-cast v3, Lmf/org/w3c/dom/Node;

    return-object v3

    .end local v0    # "e":I
    .end local v1    # "endV":Ljava/util/ArrayList;
    .end local v4    # "s":I
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .restart local v1    # "endV":Ljava/util/ArrayList;
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    .restart local v0    # "e":I
    .restart local v4    # "s":I
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "result":Ljava/lang/Object;
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public getEndContainer()Lmf/org/w3c/dom/Node;
    .locals 5

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getEndOffset()I
    .locals 5

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    return v0
.end method

.method public getStartContainer()Lmf/org/w3c/dom/Node;
    .locals 5

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getStartOffset()I
    .locals 5

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    return v0
.end method

.method indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I
    .locals 3
    .param p1, "child"    # Lmf/org/w3c/dom/Node;
    .param p2, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v2, p2, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "node":Lmf/org/w3c/dom/Node;
    :goto_0
    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method insertData(Lmf/org/w3c/dom/CharacterData;ILjava/lang/String;)V
    .locals 1
    .param p1, "node"    # Lmf/org/w3c/dom/CharacterData;
    .param p2, "index"    # I
    .param p3, "insert"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2, p3}, Lmf/org/w3c/dom/CharacterData;->insertData(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public insertNode(Lmf/org/w3c/dom/Node;)V
    .locals 13
    .param p1, "newNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    .local v6, "type":I
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v7, v7, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v7, :cond_1

    new-instance v7, Lmf/org/w3c/dom/DOMException;

    const/16 v8, 0xb

    const-string v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "INVALID_STATE_ERR"

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v8

    if-eq v7, v8, :cond_2

    new-instance v7, Lmf/org/w3c/dom/DOMException;

    const/4 v8, 0x4

    const-string v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "WRONG_DOCUMENT_ERR"

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_2
    if-eq v6, v12, :cond_3

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    const/16 v7, 0xc

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    :cond_3
    new-instance v7, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const-string v8, "http://www.w3.org/dom/DOMTR"

    const-string v9, "INVALID_NODE_TYPE_ERR"

    invoke-static {v8, v9, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v12, v8}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_4
    const/4 v2, 0x0

    .local v2, "currentChildren":I
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .local v5, "parent":Lmf/org/w3c/dom/Node;
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, v10}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "cloneCurrent":Lmf/org/w3c/dom/Node;
    move-object v7, v0

    check-cast v7, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    check-cast v7, Lmf/org/apache/xerces/dom/TextImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .local v4, "next":Lmf/org/w3c/dom/Node;
    if-eqz v4, :cond_8

    if-eqz v5, :cond_5

    invoke-interface {v5, p1, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v0, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_5
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v8, :cond_9

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v7, v8

    iput v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_6
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0, v7, v0, v8}, Lmf/org/apache/xerces/dom/RangeImpl;->signalSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    .end local v0    # "cloneCurrent":Lmf/org/w3c/dom/Node;
    .end local v4    # "next":Lmf/org/w3c/dom/Node;
    .end local v5    # "parent":Lmf/org/w3c/dom/Node;
    :cond_7
    :goto_3
    iput-boolean v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    goto/16 :goto_0

    .restart local v0    # "cloneCurrent":Lmf/org/w3c/dom/Node;
    .restart local v4    # "next":Lmf/org/w3c/dom/Node;
    .restart local v5    # "parent":Lmf/org/w3c/dom/Node;
    :cond_8
    if-eqz v5, :cond_5

    invoke-interface {v5, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v5, :cond_6

    iget v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v8

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    iput v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_2

    .end local v0    # "cloneCurrent":Lmf/org/w3c/dom/Node;
    .end local v4    # "next":Lmf/org/w3c/dom/Node;
    .end local v5    # "parent":Lmf/org/w3c/dom/Node;
    :cond_a
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    :cond_b
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "current":Lmf/org/w3c/dom/Node;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v3, 0x0

    :goto_4
    iget v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v3, v7, :cond_c

    if-nez v1, :cond_d

    :cond_c
    if-eqz v1, :cond_e

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, p1, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_5
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v8, :cond_7

    iget v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-eqz v7, :cond_7

    iget v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v8

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    iput v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_3

    :cond_d
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method public insertedNodeFromDOM(Lmf/org/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    if-eq v2, p1, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "parent":Lmf/org/w3c/dom/Node;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .local v0, "index":I
    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    .end local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .restart local v0    # "index":I
    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0
.end method

.method isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 2
    .param p1, "a"    # Lmf/org/w3c/dom/Node;
    .param p2, "b"    # Lmf/org/w3c/dom/Node;

    .prologue
    move-object v0, p2

    .local v0, "node":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "visitChildren"    # Z

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "result":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_0

    .end local v1    # "result":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .restart local v1    # "result":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, v3, :cond_4

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method receiveDeletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 2
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int v1, p2, p3

    if-le v0, v1, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int v1, p2, p3

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    add-int v1, p2, p3

    if-le v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    add-int v1, p2, p3

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-le v0, p2, :cond_2

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-le v0, p2, :cond_0

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0
.end method

.method receiveInsertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 1
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "index"    # I
    .param p3, "len"    # I

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge p2, v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0
.end method

.method receiveReplacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .locals 2
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0
.end method

.method receiveSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .locals 2
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "newNode"    # Lmf/org/w3c/dom/Node;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-le v0, p3, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iput-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-le v0, p3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    sub-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iput-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method removeChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "parent"    # Lmf/org/w3c/dom/Node;
    .param p2, "child"    # Lmf/org/w3c/dom/Node;

    .prologue
    iput-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "n":Lmf/org/w3c/dom/Node;
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method removeNode(Lmf/org/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    if-eq v2, p1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "parent":Lmf/org/w3c/dom/Node;
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .local v0, "index":I
    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    .end local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .restart local v0    # "index":I
    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    .end local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-eq v1, v2, :cond_0

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0
.end method

.method public selectNode(Lmf/org/w3c/dom/Node;)V
    .locals 8
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/16 v4, 0xb

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v4, 0x2

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_NODE_TYPE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v3, p1, :cond_3

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x4

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .local v2, "parent":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_4

    iput-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_5

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    .end local v0    # "i":I
    .end local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_4
    return-void

    .restart local v0    # "i":I
    .restart local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public selectNodeContents(Lmf/org/w3c/dom/Node;)V
    .locals 8
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/16 v4, 0xb

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v4, 0x2

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_NODE_TYPE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v3, p1, :cond_2

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x4

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "first":Lmf/org/w3c/dom/Node;
    iput v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-nez v0, :cond_3

    iput v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v2, v0

    .local v2, "n":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v2, :cond_4

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_1
.end method

.method public setEnd(Lmf/org/w3c/dom/Node;I)V
    .locals 5
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v1, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v0, p1, :cond_2

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->checkIndex(Lmf/org/w3c/dom/Node;I)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_4
    return-void
.end method

.method public setEndAfter(Lmf/org/w3c/dom/Node;)V
    .locals 7
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v2, :cond_0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0xb

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v3, 0x2

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_3

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x4

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_6

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v2, v3, :cond_5

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public setEndBefore(Lmf/org/w3c/dom/Node;)V
    .locals 7
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v2, :cond_0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0xb

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v3, 0x2

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_3

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x4

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_6

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v2, v3, :cond_5

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public setStart(Lmf/org/w3c/dom/Node;I)V
    .locals 5
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v1, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v0, p1, :cond_2

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->checkIndex(Lmf/org/w3c/dom/Node;I)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_4
    return-void
.end method

.method public setStartAfter(Lmf/org/w3c/dom/Node;)V
    .locals 7
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v2, :cond_0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0xb

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v3, 0x2

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_3

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x4

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_6

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v2, v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public setStartBefore(Lmf/org/w3c/dom/Node;)V
    .locals 7
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v2, :cond_0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0xb

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v3, 0x2

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_3

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x4

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_6

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v2, v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method signalSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .locals 1
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "newNode"    # Lmf/org/w3c/dom/Node;
    .param p3, "offset"    # I

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentImpl;->splitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public surroundContents(Lmf/org/w3c/dom/Node;)V
    .locals 10
    .param p1, "newParent"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    .local v3, "type":I
    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v4, :cond_1

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    if-eq v3, v7, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    if-ne v3, v9, :cond_3

    :cond_2
    new-instance v4, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_NODE_TYPE_ERR"

    invoke-static {v5, v6, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    .local v2, "realStart":Lmf/org/w3c/dom/Node;
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    .local v1, "realEnd":Lmf/org/w3c/dom/Node;
    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :cond_5
    if-eq v2, v1, :cond_6

    new-instance v4, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v5, 0x1

    const-string v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "BAD_BOUNDARYPOINTS_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->extractContents()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    .local v0, "frag":Lmf/org/w3c/dom/DocumentFragment;
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->insertNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->selectNode(Lmf/org/w3c/dom/Node;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    iget-boolean v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v5, :cond_0

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0xb

    const-string v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "INVALID_STATE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    .local v2, "node":Lmf/org/w3c/dom/Node;
    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    .local v4, "stopNode":Lmf/org/w3c/dom/Node;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_9

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, v10}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_3
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v8, :cond_5

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    .local v1, "i":I
    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    :goto_2
    if-lez v1, :cond_4

    if-nez v4, :cond_c

    :cond_4
    if-nez v4, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .end local v1    # "i":I
    :cond_5
    :goto_3
    if-ne v2, v4, :cond_d

    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_8

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_9
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iget v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-lez v5, :cond_a

    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_4
    iget v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v5, :cond_a

    if-nez v2, :cond_b

    .end local v0    # "counter":I
    :cond_a
    if-nez v2, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    .restart local v0    # "counter":I
    :cond_b
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "counter":I
    .restart local v1    # "i":I
    :cond_c
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_2

    .end local v1    # "i":I
    :cond_d
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_e

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_f

    :cond_e
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    invoke-virtual {p0, v2, v10}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_3
.end method
