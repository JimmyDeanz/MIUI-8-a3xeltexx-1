.class public Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
.super Ljava/lang/Object;
.source "XSModelGroupImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSModelGroup;


# static fields
.field public static final MODELGROUP_ALL:S = 0x67s

.field public static final MODELGROUP_CHOICE:S = 0x65s

.field public static final MODELGROUP_SEQUENCE:S = 0x66s


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field public fCompositor:S

.field private fDescription:Ljava/lang/String;

.field public fParticleCount:I

.field public fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 55
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 146
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private maxEffectiveTotalRangeAllSeq()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v4, :cond_0

    .line 120
    .end local v2    # "total":I
    :goto_1
    return v2

    .line 115
    .restart local v2    # "total":I
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v1

    .line 116
    .local v1, "one":I
    if-ne v1, v3, :cond_1

    move v2, v3

    .line 117
    goto :goto_1

    .line 118
    :cond_1
    add-int/2addr v2, v1

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private maxEffectiveTotalRangeChoice()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "max":I
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lez v4, :cond_1

    .line 128
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v1

    .line 129
    if-ne v1, v3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v3

    .line 133
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v4, :cond_2

    move v3, v1

    .line 140
    goto :goto_0

    .line 134
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v2

    .line 135
    .local v2, "one":I
    if-eq v2, v3, :cond_0

    .line 137
    if-le v2, v1, :cond_3

    .line 138
    move v1, v2

    .line 133
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private minEffectiveTotalRangeAllSeq()I
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v2, :cond_0

    .line 85
    return v1

    .line 84
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v2

    add-int/2addr v1, v2

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private minEffectiveTotalRangeChoice()I
    .locals 5

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "min":I
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lez v3, :cond_0

    .line 92
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v1

    .line 94
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v3, :cond_1

    .line 100
    return v1

    .line 95
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v2

    .line 96
    .local v2, "one":I
    if-ge v2, v1, :cond_2

    .line 97
    move v1, v2

    .line 94
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getCompositor()S
    .locals 2

    .prologue
    .line 208
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 209
    const/4 v0, 0x2

    .line 213
    :goto_0
    return v0

    .line 210
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParticles()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x7

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v1, :cond_0

    .line 63
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 60
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    const/4 v1, 0x0

    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public maxEffectiveTotalRange()I
    .locals 2

    .prologue
    .line 104
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->maxEffectiveTotalRangeChoice()I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->maxEffectiveTotalRangeAllSeq()I

    move-result v0

    goto :goto_0
.end method

.method public minEffectiveTotalRange()I
    .locals 2

    .prologue
    .line 74
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->minEffectiveTotalRangeChoice()I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->minEffectiveTotalRangeAllSeq()I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    const/16 v0, 0x66

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 173
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 175
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v3, 0x67

    if-ne v2, v3, :cond_2

    .line 152
    const-string v2, "all("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lez v2, :cond_0

    .line 156
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v2, :cond_3

    .line 165
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    .line 168
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    return-object v2

    .line 154
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 158
    .restart local v1    # "i":I
    :cond_3
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    .line 159
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_4
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
