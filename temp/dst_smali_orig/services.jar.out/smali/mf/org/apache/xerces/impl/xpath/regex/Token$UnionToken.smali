.class Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnionToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23a65df5641dc4c5L


# instance fields
.field children:Ljava/util/Vector;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    return-void
.end method


# virtual methods
.method addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 10
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    const/high16 v9, 0x10000

    const/16 v8, 0xa

    const/4 v3, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    :cond_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    if-ne v6, v3, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .local v5, "size":I
    if-nez v5, :cond_5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .local v4, "previous":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v6, :cond_6

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v8, :cond_7

    :cond_6
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v6, :cond_8

    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v6, v8, :cond_8

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_9

    .local v3, "nextMaxLength":I
    :goto_2
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x2

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v1

    .local v1, "ch":I
    if-lt v1, v9, :cond_a

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const/4 v6, 0x0

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v4, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .end local v1    # "ch":I
    :goto_4
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_d

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v1

    .restart local v1    # "ch":I
    if-lt v1, v9, :cond_c

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v1    # "ch":I
    :goto_5
    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    .end local v4    # "previous":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->string:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "nextMaxLength":I
    .restart local v4    # "previous":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_9
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_2

    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "ch":I
    .restart local v3    # "nextMaxLength":I
    :cond_a
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "ch":I
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .restart local v1    # "ch":I
    :cond_c
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .end local v1    # "ch":I
    :cond_d
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5
.end method

.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method size()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    .local v0, "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    .local v1, "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    iget v6, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    if-ne v6, v0, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0    # "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v1    # "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    move-object v4, v3

    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    :goto_1
    return-object v4

    .end local v4    # "ret":Ljava/lang/String;
    .restart local v0    # "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .restart local v1    # "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_0
    iget v6, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    if-ne v6, v0, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ch":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v1    # "ch2":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v3    # "ret":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "ret":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v6, v9, :cond_5

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    iget v6, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v10, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    :goto_3
    move-object v4, v3

    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v4    # "ret":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v6, v9, :cond_6

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    iget v6, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v10, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "??"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_3

    .end local v3    # "ret":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_7

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_3

    .end local v3    # "ret":Ljava/lang/String;
    :cond_7
    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
