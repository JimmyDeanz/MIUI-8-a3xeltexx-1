.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 443
    instance-of v3, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 444
    check-cast v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 445
    .local v1, "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    iget v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v4, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    iget-object v4, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v4, v4

    if-eq v3, v4, :cond_1

    .line 455
    .end local v1    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :cond_0
    :goto_0
    return v2

    .line 448
    .restart local v1    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 449
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    iget-object v4, v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 460
    iget v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 461
    .local v2, "hash":I
    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .local v0, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 462
    .local v1, "function":Lcom/google/common/hash/HashFunction;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "function":Lcom/google/common/hash/HashFunction;
    :cond_0
    return v2
.end method
