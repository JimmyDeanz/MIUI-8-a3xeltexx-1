.class public final Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;
.super Ljava/lang/Object;
.source "XSDeclarationPool.java"


# static fields
.field private static final CHUNK_MASK:I = 0xff

.field private static final CHUNK_SHIFT:I = 0x8

.field private static final CHUNK_SIZE:I = 0x100

.field private static final INITIAL_CHUNK_COUNT:I = 0x4


# instance fields
.field private dvFactory:Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

.field private fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field private fAttrDeclIndex:I

.field private fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

.field private fAttributeUseIndex:I

.field private fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fCTDeclIndex:I

.field private fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fElementDeclIndex:I

.field private fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

.field private fModelGroupIndex:I

.field private fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fParticleDeclIndex:I

.field private fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fSTDeclIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, v2, [[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 50
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    .line 53
    new-array v0, v2, [[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 54
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    .line 57
    new-array v0, v2, [[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 58
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    .line 61
    new-array v0, v2, [[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 62
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    .line 65
    new-array v0, v2, [[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 66
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    .line 69
    new-array v0, v2, [[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 70
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    .line 73
    new-array v0, v2, [[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 74
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    .line 35
    return-void
.end method

.method private ensureAttrDeclCapacity(I)Z
    .locals 2
    .param p1, "chunk"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 235
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->resize([[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 240
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    const/16 v1, 0x100

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    aput-object v1, v0, p1

    .line 241
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureAttributeUseCapacity(I)Z
    .locals 2
    .param p1, "chunk"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 252
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->resize([[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 257
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    const/16 v1, 0x100

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object v1, v0, p1

    .line 258
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 253
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureCTDeclCapacity(I)Z
    .locals 2
    .param p1, "chunk"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 287
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->resize([[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 292
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/16 v1, 0x100

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aput-object v1, v0, p1

    .line 293
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 288
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureElementDeclCapacity(I)Z
    .locals 2
    .param p1, "chunk"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 184
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->resize([[Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 189
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/16 v1, 0x100

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v1, v0, p1

    .line 190
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureModelGroupCapacity(I)Z
    .locals 2
    .param p1, "chunk"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 212
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->resize([[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;I)[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 217
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/16 v1, 0x100

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    aput-object v1, v0, p1

    .line 218
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 213
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureParticleDeclCapacity(I)Z
    .locals 2
    .param p1, "chunk"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 201
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->resize([[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 206
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/16 v1, 0x100

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v1, v0, p1

    .line 207
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 202
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureSTDeclCapacity(I)Z
    .locals 2
    .param p1, "chunk"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 269
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->resize([[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;I)[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 274
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v1, 0x100

    new-array v1, v1, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v1, v0, p1

    .line 275
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;I)[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    .line 279
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 280
    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    .line 245
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 246
    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    .line 262
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 263
    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    .line 297
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 298
    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    .line 194
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 195
    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;I)[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    .line 228
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 229
    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;I)[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    .line 222
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 223
    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    return-object v0
.end method


# virtual methods
.method public final getAttributeDecl()Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 4

    .prologue
    .line 95
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    shr-int/lit8 v0, v2, 0x8

    .line 96
    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    and-int/lit16 v1, v2, 0xff

    .line 97
    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->ensureAttrDeclCapacity(I)Z

    .line 98
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    aput-object v3, v2, v1

    .line 103
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    .line 104
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 101
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->reset()V

    goto :goto_0
.end method

.method public final getAttributeUse()Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 4

    .prologue
    .line 109
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    shr-int/lit8 v0, v2, 0x8

    .line 110
    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    and-int/lit16 v1, v2, 0xff

    .line 111
    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->ensureAttributeUseCapacity(I)Z

    .line 112
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    aput-object v3, v2, v1

    .line 117
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    .line 118
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 115
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->reset()V

    goto :goto_0
.end method

.method public final getComplexTypeDecl()Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 4

    .prologue
    .line 123
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    shr-int/lit8 v0, v2, 0x8

    .line 124
    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    and-int/lit16 v1, v2, 0xff

    .line 125
    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->ensureCTDeclCapacity(I)Z

    .line 126
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    aput-object v3, v2, v1

    .line 132
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    .line 133
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 130
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDecl:[[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->reset()V

    goto :goto_0
.end method

.method public final getElementDecl()Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 4

    .prologue
    .line 82
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    shr-int/lit8 v0, v2, 0x8

    .line 83
    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    and-int/lit16 v1, v2, 0xff

    .line 84
    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->ensureElementDeclCapacity(I)Z

    .line 85
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    aput-object v3, v2, v1

    .line 90
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    .line 91
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 88
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDecl:[[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->reset()V

    goto :goto_0
.end method

.method public final getModelGroup()Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .locals 4

    .prologue
    .line 164
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    shr-int/lit8 v0, v2, 0x8

    .line 165
    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    and-int/lit16 v1, v2, 0xff

    .line 166
    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->ensureModelGroupCapacity(I)Z

    .line 167
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    aput-object v3, v2, v1

    .line 172
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    .line 173
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 170
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroup:[[Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->reset()V

    goto :goto_0
.end method

.method public final getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    .prologue
    .line 151
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    shr-int/lit8 v0, v2, 0x8

    .line 152
    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    and-int/lit16 v1, v2, 0xff

    .line 153
    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->ensureParticleDeclCapacity(I)Z

    .line 154
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    aput-object v3, v2, v1

    .line 159
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    .line 160
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 157
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->reset()V

    goto :goto_0
.end method

.method public final getSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 4

    .prologue
    .line 137
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    shr-int/lit8 v0, v2, 0x8

    .line 138
    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    and-int/lit16 v1, v2, 0xff

    .line 139
    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->ensureSTDeclCapacity(I)Z

    .line 140
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->dvFactory:Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->newXSSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v3

    aput-object v3, v2, v1

    .line 145
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    .line 146
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 143
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDecl:[[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reset()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 305
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    .line 306
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    .line 307
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    .line 308
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    .line 309
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    .line 310
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    .line 311
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    .line 312
    return-void
.end method

.method public setDVFactory(Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;)V
    .locals 0
    .param p1, "dvFactory"    # Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    .prologue
    .line 78
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->dvFactory:Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    .line 79
    return-void
.end method
