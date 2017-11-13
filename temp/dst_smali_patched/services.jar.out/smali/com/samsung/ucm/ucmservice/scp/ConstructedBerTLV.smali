.class public Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
.super Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.source "ConstructedBerTLV.java"


# instance fields
.field private mValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/ucm/ucmservice/scp/BerTLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .locals 2
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v1, "Inconsistent tag"

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>([BIII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    iput p4, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v2, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>([BI)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->parseLength([BI)I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v2

    if-le v2, p3, :cond_0

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format exception (buffer size max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    const/4 v0, 0x0

    .local v0, "read_len":I
    :goto_0
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    iget v3, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, p2, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_1
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    if-eq v0, v2, :cond_2

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format exception (buffer size expected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V
    .locals 1
    .param p1, "tlv"    # Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .prologue
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    return-void
.end method

.method public getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 3
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;

    .prologue
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_0

    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .locals 3
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;

    .prologue
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_1
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    invoke-super {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLevel:I

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method public updateLength()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mLen:I

    goto :goto_0

    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLenLength()V

    return-void
.end method

.method public write([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->updateLength()V

    move v1, p2

    .local v1, "offset":I
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->write([BI)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->writeLen([BI)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getFullLen()I

    move-result v2

    return v2
.end method
