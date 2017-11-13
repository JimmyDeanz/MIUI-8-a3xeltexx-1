.class public abstract Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.super Ljava/lang/Object;
.source "BerTLV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
    }
.end annotation


# instance fields
.field protected mLen:I

.field protected mLenLength:I

.field protected mLevel:I

.field protected mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isSpecialPrimitiveTag(B)Z
    .locals 1
    .param p0, "tagVal"    # B

    .prologue
    const/16 v0, -0x50

    if-eq p0, v0, :cond_0

    const/16 v0, -0x10

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 2
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    :goto_0
    return-object v0

    :cond_0
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    goto :goto_0
.end method

.method protected static parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    :goto_0
    return-object v0

    :cond_0
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    goto :goto_0
.end method


# virtual methods
.method public getFullLen()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    return v0
.end method

.method public abstract getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.end method

.method public getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    return-object v0
.end method

.method protected parseLength([BI)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, -0x81

    int-to-short v0, v1

    .local v0, "size":S
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v2, "Invalid format (size)"

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    :pswitch_1
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    :pswitch_2
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    :pswitch_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .end local v0    # "size":S
    :cond_0
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    iput p1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( tag_len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len_length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLenLength()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_0
.end method

.method public abstract updateLength()V
.end method

.method public abstract write([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public write()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v1

    new-array v0, v1, [B

    .local v0, "res":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    return-object v0
.end method

.method public writeLen([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outoffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .local v0, "outoffset":I
    const/16 v1, -0x7f

    aput-byte v1, p1, p2

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v1, 0x2

    move p2, v0

    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v0    # "outoffset":I
    const/16 v1, -0x7e

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v0    # "outoffset":I
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    const/4 v1, 0x3

    move p2, v0

    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unsupported"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
