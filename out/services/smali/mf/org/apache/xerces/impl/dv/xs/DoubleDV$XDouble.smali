.class final Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;
.super Ljava/lang/Object;
.source "DoubleDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XDouble"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;->isPossibleFP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "-INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "NaN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I

    move-result v0

    return v0
.end method

.method private compareTo(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I
    .locals 8
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 146
    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    .line 149
    .local v0, "oval":D
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpg-double v4, v4, v0

    if-gez v4, :cond_1

    .line 150
    const/4 v2, -0x1

    .line 170
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v4, v4, v0

    if-lez v4, :cond_2

    .line 153
    const/4 v2, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_0

    .line 161
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    .line 163
    cmpl-double v4, v0, v0

    if-nez v4, :cond_0

    move v2, v3

    .line 166
    goto :goto_0

    :cond_3
    move v2, v3

    .line 170
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    if-ne p1, p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    if-nez v3, :cond_2

    move v1, v2

    .line 106
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 107
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    .line 110
    .local v0, "oval":Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v6, v0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    .line 113
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v6, v0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 121
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 122
    const/4 v2, 0x0

    .line 125
    :goto_0
    return v2

    .line 124
    :cond_0
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 125
    .local v0, "v":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_0
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)Z
    .locals 6
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 130
    if-ne p1, p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 135
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 136
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 135
    goto :goto_0

    .line 139
    :cond_2
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 176
    iget-wide v10, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v9, v10, v12

    if-nez v9, :cond_1

    .line 177
    const-string v9, "INF"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    .line 252
    :cond_0
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v9

    .line 178
    :cond_1
    :try_start_1
    iget-wide v10, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v9, v10, v12

    if-nez v9, :cond_2

    .line 179
    const-string v9, "-INF"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 180
    :cond_2
    :try_start_2
    iget-wide v10, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v12, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_3

    .line 181
    const-string v9, "NaN"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_3
    iget-wide v10, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-nez v9, :cond_4

    .line 184
    const-string v9, "0.0E1"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_4
    iget-wide v10, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    .line 192
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/16 v10, 0x45

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 193
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 195
    .local v5, "len":I
    add-int/lit8 v9, v5, 0x3

    new-array v0, v9, [C

    .line 196
    .local v0, "chars":[C
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v0, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 198
    const/4 v9, 0x0

    aget-char v9, v0, v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_6

    const/4 v2, 0x2

    .line 200
    .local v2, "edp":I
    :goto_1
    iget-wide v10, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v10, v12

    if-gez v9, :cond_5

    iget-wide v10, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_9

    .line 202
    :cond_5
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 204
    .local v1, "dp":I
    move v3, v1

    .local v3, "i":I
    :goto_2
    if-gt v3, v2, :cond_7

    .line 207
    const/16 v9, 0x2e

    aput-char v9, v0, v2

    .line 209
    :goto_3
    add-int/lit8 v9, v5, -0x1

    aget-char v9, v0, v9

    const/16 v10, 0x30

    if-eq v9, v10, :cond_8

    .line 212
    add-int/lit8 v9, v5, -0x1

    aget-char v9, v0, v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_d

    .line 213
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .line 215
    .end local v5    # "len":I
    .local v6, "len":I
    :goto_4
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    const/16 v9, 0x45

    aput-char v9, v0, v6

    .line 217
    sub-int v8, v1, v2

    .line 220
    .local v8, "shift":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .restart local v6    # "len":I
    add-int/lit8 v9, v8, 0x30

    int-to-char v9, v9

    aput-char v9, v0, v5

    move v5, v6

    .line 248
    .end local v1    # "dp":I
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :goto_5
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto/16 :goto_0

    .line 198
    .end local v2    # "edp":I
    .end local v3    # "i":I
    .end local v8    # "shift":I
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 205
    .restart local v1    # "dp":I
    .restart local v2    # "edp":I
    .restart local v3    # "i":I
    :cond_7
    add-int/lit8 v9, v3, -0x1

    aget-char v9, v0, v9

    aput-char v9, v0, v3

    .line 204
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 210
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 224
    .end local v1    # "dp":I
    .end local v3    # "i":I
    :cond_9
    add-int/lit8 v7, v2, 0x1

    .line 226
    .local v7, "nzp":I
    :goto_6
    aget-char v9, v0, v7

    const/16 v10, 0x30

    if-eq v9, v10, :cond_a

    .line 229
    add-int/lit8 v9, v2, -0x1

    aget-char v10, v0, v7

    aput-char v10, v0, v9

    .line 230
    const/16 v9, 0x2e

    aput-char v9, v0, v2

    .line 232
    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "i":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    :goto_7
    if-lt v3, v5, :cond_b

    .line 235
    sub-int v9, v7, v2

    sub-int/2addr v5, v9

    .line 237
    add-int/lit8 v9, v2, 0x1

    if-ne v5, v9, :cond_c

    .line 238
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .restart local v6    # "len":I
    const/16 v9, 0x30

    aput-char v9, v0, v5

    .line 240
    :goto_8
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    const/16 v9, 0x45

    aput-char v9, v0, v6

    .line 241
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .restart local v6    # "len":I
    const/16 v9, 0x2d

    aput-char v9, v0, v5

    .line 243
    sub-int v8, v7, v2

    .line 246
    .restart local v8    # "shift":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    add-int/lit8 v9, v8, 0x30

    int-to-char v9, v9

    aput-char v9, v0, v6

    goto :goto_5

    .line 227
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v8    # "shift":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 233
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_b
    aget-char v9, v0, v3

    aput-char v9, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    move v6, v5

    .end local v5    # "len":I
    .restart local v6    # "len":I
    goto :goto_8

    .end local v4    # "j":I
    .end local v6    # "len":I
    .end local v7    # "nzp":I
    .restart local v1    # "dp":I
    .restart local v5    # "len":I
    :cond_d
    move v6, v5

    .end local v5    # "len":I
    .restart local v6    # "len":I
    goto :goto_4
.end method
