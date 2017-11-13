.class public Landroid/graphics/ImageFilter$CosineBlurFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CosineBlurFilter"
.end annotation


# static fields
.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x0

.field private static final STEP_COUNT:I = 0x2

.field private static mFragmentShaderCode:[Ljava/lang/String;


# instance fields
.field private mQuality:F

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\n\nvoid main(void) {\n    highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n\t float step = 1.0 / areaW ;\n\t float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n\t \t scaledStep = step * filterData02[i];\n\t\t texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n\t\t texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n\t gl_FragColor = fragColorBlur;\n}\n\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\n\nvoid main(void) {\n\t highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n\t float step = 1.0 / areaH;\n\t float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n\t \t scaledStep = step * filterData02[i];\n\t\t texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n\t\t texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n\t gl_FragColor = fragColorBlur;\n}\n\n"

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v3, v1, v2

    sget-object v2, Landroid/graphics/ImageFilter$CosineBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mQuality:F

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->useFilterData01()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->useFilterData02()V

    return-void
.end method


# virtual methods
.method protected computeCosineCoefs()V
    .locals 14

    .prologue
    const/high16 v10, 0x42700000    # 60.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v12, 0x0

    iget v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_0

    iput v10, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    :cond_0
    iget v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    iget-object v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mData1:[F

    aput v13, v8, v12

    iget-object v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mData2:[F

    aput v9, v8, v12

    :goto_0
    return-void

    :cond_1
    const v3, 0x402df854    # (float)Math.E

    .local v3, "e":F
    const v6, 0x40490fdb    # (float)Math.PI

    .local v6, "pi":F
    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    div-float v0, v8, v9

    .local v0, "coeff1":F
    iget v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    div-float v1, v6, v8

    .local v1, "coeff2":F
    const/4 v5, 0x0

    .local v5, "normalizeFactor":F
    const/16 v8, 0x80

    new-array v2, v8, [F

    .local v2, "data":[F
    const/4 v7, 0x0

    .local v7, "r":I
    :goto_1
    int-to-float v8, v7

    iget v9, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    int-to-float v4, v7

    .local v4, "floatR":F
    float-to-double v8, v0

    mul-float v10, v1, v4

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    add-float/2addr v8, v0

    aput v8, v2, v7

    if-lez v7, :cond_2

    aget v8, v2, v7

    add-float/2addr v5, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v4    # "floatR":F
    :cond_3
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v5, v8

    aget v8, v2, v12

    add-float/2addr v5, v8

    const/4 v7, 0x0

    :goto_2
    int-to-float v8, v7

    iget v9, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    aget v8, v2, v7

    div-float/2addr v8, v5

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_3
    int-to-float v8, v7

    iget v9, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_5

    iget-object v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mData1:[F

    aget v9, v2, v7

    aput v9, v8, v7

    iget-object v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mData2:[F

    int-to-float v9, v7

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    iget v8, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    invoke-virtual {p0, v12, v8}, Landroid/graphics/ImageFilter$CosineBlurFilter;->setParam(IF)V

    const/4 v8, 0x2

    iget v9, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    add-float/2addr v9, v13

    invoke-virtual {p0, v8, v9}, Landroid/graphics/ImageFilter$CosineBlurFilter;->setParam(IF)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->setFilterData01Changed()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->setFilterData02Changed()V

    goto :goto_0
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x437a0000    # 250.0f

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->computeCosineCoefs()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    goto :goto_0
.end method

.method public setRadius(I)V
    .locals 3
    .param p1, "radius"    # I

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "This method is deprecated!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected setupDownSampling()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/graphics/ImageFilter$CosineBlurFilter;->mRadius:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, "downSampleRate":F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v4}, Landroid/graphics/ImageFilter$CosineBlurFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Landroid/graphics/ImageFilter$CosineBlurFilter;->setSamplingRate(IFF)V

    return-void
.end method
