.class Lcom/android/internal/widget/RandomString;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rand(II)I
    .locals 4
    .param p0, "lo"    # I
    .param p1, "hi"    # I

    .prologue
    .line 3548
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 3549
    .local v2, "rn":Ljava/util/Random;
    sub-int v3, p1, p0

    add-int/lit8 v1, v3, 0x1

    .line 3550
    .local v1, "n":I
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 3551
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 3552
    neg-int v0, v0

    .line 3553
    :cond_0
    add-int v3, p0, v0

    return v3
.end method

.method public static randomstring()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3561
    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/widget/RandomString;->randomstring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomstring(II)Ljava/lang/String;
    .locals 5
    .param p0, "lo"    # I
    .param p1, "hi"    # I

    .prologue
    .line 3535
    invoke-static {p0, p1}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v2

    .line 3536
    .local v2, "n":I
    new-array v0, v2, [B

    .line 3537
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3538
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 3539
    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3537
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3541
    :cond_0
    const/16 v3, 0x61

    const/16 v4, 0x7a

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_1

    .line 3544
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method
