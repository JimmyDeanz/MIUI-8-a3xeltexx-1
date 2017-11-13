.class public final Lcom/google/common/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# direct methods
.method public static isUpperCase(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 547
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 439
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 440
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 442
    .local v1, "chars":[C
    :goto_1
    if-ge v2, v3, :cond_1

    .line 443
    aget-char v0, v1, v2

    .line 444
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    xor-int/lit8 v4, v0, 0x20

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 448
    .end local v0    # "c":C
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 451
    .end local v1    # "chars":[C
    .end local p0    # "string":Ljava/lang/String;
    :cond_2
    return-object p0

    .line 439
    .restart local p0    # "string":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
