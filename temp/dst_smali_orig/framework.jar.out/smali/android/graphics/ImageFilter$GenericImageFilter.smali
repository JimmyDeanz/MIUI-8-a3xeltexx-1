.class public Landroid/graphics/ImageFilter$GenericImageFilter;
.super Landroid/graphics/ImageFilterSet;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericImageFilter"
.end annotation


# static fields
.field protected static final FALSE:F = 0.0f

.field protected static final FILTER_BLEND_DST_FACTOR:I = 0x6

.field protected static final FILTER_BLEND_SRC_FACTOR:I = 0x5

.field protected static final FILTER_BLEND_USAGE:I = 0x4

.field protected static final FILTER_DOWN_SAMPLE_RATE_H:I = 0x8

.field protected static final FILTER_DOWN_SAMPLE_RATE_V:I = 0x9

.field protected static final FILTER_HAS_SAMPLERS:I = 0x3

.field protected static final FILTER_HAS_UNIFORMS:I = 0x2

.field protected static final FILTER_IS_CHANGED:I = 0x1

.field protected static final FILTER_IS_ENABLED:I = 0x0

.field protected static final FILTER_TRANSFORM:I = 0x7

.field protected static final GL_CONSTANT_ALPHA:F = 12.0f

.field protected static final GL_CONSTANT_COLOR:F = 10.0f

.field protected static final GL_DST_ALPHA:F = 8.0f

.field protected static final GL_DST_COLOR:F = 4.0f

.field protected static final GL_ONE:F = 1.0f

.field protected static final GL_ONE_MINUS_CONSTANT_ALPHA:F = 13.0f

.field protected static final GL_ONE_MINUS_CONSTANT_COLOR:F = 11.0f

.field protected static final GL_ONE_MINUS_DST_ALPHA:F = 9.0f

.field protected static final GL_ONE_MINUS_DST_COLOR:F = 5.0f

.field protected static final GL_ONE_MINUS_SRC_ALPHA:F = 7.0f

.field protected static final GL_ONE_MINUS_SRC_COLOR:F = 3.0f

.field protected static final GL_SRC_ALPHA:F = 6.0f

.field protected static final GL_SRC_ALPHA_SATURATE:F = 14.0f

.field protected static final GL_SRC_COLOR:F = 2.0f

.field protected static final GL_ZERO:F = 0.0f

.field protected static final TRUE:F = 1.0f

.field public static final mVertexShaderCodeCommon:Ljava/lang/String; = "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"


# instance fields
.field protected mData1:[F

.field protected mData2:[F

.field protected mFrag:[Ljava/lang/String;

.field protected mIsFilterData01Modified:Z

.field protected mIsFilterData01Used:Z

.field protected mIsFilterData02Modified:Z

.field protected mIsFilterData02Used:Z

.field protected mIsFilterParamsModified:Z

.field protected mIsFilterParamsUsed:Z

.field protected mParams:[F

.field protected mPassNum:I

.field protected mVert:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "passNum"    # I
    .param p2, "vert"    # [Ljava/lang/String;
    .param p3, "frag"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/ImageFilterSet;-><init>()V

    iput v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mParams:[F

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData1:[F

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData2:[F

    iput-boolean v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsUsed:Z

    iput-boolean v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Used:Z

    iput-boolean v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Used:Z

    iput-boolean v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsModified:Z

    iput-boolean v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Modified:Z

    iput-boolean v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Modified:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/ImageFilter$GenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "vert"    # Ljava/lang/String;
    .param p2, "frag"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/ImageFilterSet;-><init>()V

    iput v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mParams:[F

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData1:[F

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData2:[F

    iput-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsUsed:Z

    iput-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Used:Z

    iput-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Used:Z

    iput-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsModified:Z

    iput-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Modified:Z

    iput-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Modified:Z

    iput v3, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p0, v3, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected buildWorkerFilters()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/graphics/ImageFilterSet;->clearFilters()V

    const/4 v0, 0x0

    .local v0, "pass":I
    :goto_0
    iget v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$GenericImageFilter;->getVertexShaderCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$GenericImageFilter;->getFragmentShaderCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/ImageFilter;->createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/ImageFilter$CustomFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;->addFilter(Landroid/graphics/ImageFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getFragmentShaderCode(I)Ljava/lang/String;
    .locals 2
    .param p1, "pass"    # I

    .prologue
    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mFrag:[Ljava/lang/String;

    iget-object v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mFrag:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected getVertexShaderCode(I)Ljava/lang/String;
    .locals 2
    .param p1, "pass"    # I

    .prologue
    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mVert:[Ljava/lang/String;

    iget-object v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mVert:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected getVertexShaderCodeCommon()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    return-object v0
.end method

.method protected notifyWorkerFilters()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .local v1, "pass":I
    :goto_0
    iget v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$CustomFilter;

    .local v0, "filter":Landroid/graphics/ImageFilter$CustomFilter;
    iget-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsUsed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsModified:Z

    if-eqz v2, :cond_0

    const-string v2, "filterParams"

    iget-object v3, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mParams:[F

    array-length v3, v3

    iget-object v4, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mParams:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/ImageFilter$CustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    :cond_0
    iget-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Used:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Modified:Z

    if-eqz v2, :cond_1

    const-string v2, "filterData01"

    iget-object v3, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData1:[F

    array-length v3, v3

    iget-object v4, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData1:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/ImageFilter$CustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    :cond_1
    iget-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Used:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Modified:Z

    if-eqz v2, :cond_2

    const-string v2, "filterData02"

    iget-object v3, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData2:[F

    array-length v3, v3

    iget-object v4, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mData2:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/ImageFilter$CustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "filter":Landroid/graphics/ImageFilter$CustomFilter;
    :cond_3
    return-void
.end method

.method protected resetFilterData01Changed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Modified:Z

    return-void
.end method

.method protected resetFilterData02Changed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Modified:Z

    return-void
.end method

.method protected resetFilterParamsChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsModified:Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .local v0, "pass":I
    :goto_0
    iget v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$GenericImageFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/ImageFilter$CustomFilter;

    const-string v2, "maskSampler"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/graphics/ImageFilter$CustomFilter;->setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setFilterData01Changed()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Modified:Z

    return-void
.end method

.method protected setFilterData02Changed()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Modified:Z

    return-void
.end method

.method protected setFilterParamsChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsModified:Z

    return-void
.end method

.method protected setParam(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    iget-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mParams:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GenericImageFilter;->useFilterParams()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GenericImageFilter;->setFilterParamsChanged()V

    return-void
.end method

.method public setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .local v0, "pass":I
    :goto_0
    iget v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$GenericImageFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/ImageFilter$CustomFilter;

    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/ImageFilter$CustomFilter;->setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setSamplingRate(IFF)V
    .locals 2
    .param p1, "filter"    # I
    .param p2, "horizontal"    # F
    .param p3, "vertical"    # F

    .prologue
    if-ltz p1, :cond_0

    iget v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    if-gt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GenericImageFilter;->getFilterCount()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/ImageFilter$GenericImageFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    .local v0, "f":Landroid/graphics/ImageFilter;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Landroid/graphics/ImageFilter;->setValue(IF)V

    goto :goto_0
.end method

.method protected setup(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "passNum"    # I
    .param p2, "vert"    # [Ljava/lang/String;
    .param p3, "frag"    # [Ljava/lang/String;

    .prologue
    iput p1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    iput-object p2, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mVert:[Ljava/lang/String;

    iput-object p3, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mFrag:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GenericImageFilter;->buildWorkerFilters()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method protected setup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vert"    # Ljava/lang/String;
    .param p2, "frag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iput v1, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mPassNum:I

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mVert:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mFrag:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GenericImageFilter;->buildWorkerFilters()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method protected unUseFilterData01()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Used:Z

    return-void
.end method

.method protected unUseFilterData02()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Used:Z

    return-void
.end method

.method protected unUseFilterParams()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsUsed:Z

    return-void
.end method

.method protected useFilterData01()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData01Used:Z

    return-void
.end method

.method protected useFilterData02()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterData02Used:Z

    return-void
.end method

.method protected useFilterParams()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/ImageFilter$GenericImageFilter;->mIsFilterParamsUsed:Z

    return-void
.end method
