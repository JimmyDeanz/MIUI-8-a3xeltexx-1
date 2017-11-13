.class public Landroid/graphics/ImageFilter$GaussianBlurFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GaussianBlurFilter"
.end annotation


# static fields
.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x0

.field private static final STEP:I = 0x1

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

    const-string v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\n\nvoid main(void) {\n\t vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n\t float step = 1.0 / areaW ;\n\t float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n\t \t scaledStep = step * filterData02[i];\n\t\t texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n\t\t texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n\t gl_FragColor = fragColorBlur;\n}\n\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\n\nvoid main(void) {\n\t vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n\t float step = 1.0 / areaH;\n\t float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n\t \t scaledStep = step * filterData02[i];\n\t\t texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n\t\t texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n\t gl_FragColor = fragColorBlur;\n}\n\n"

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

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

    sget-object v2, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mQuality:F

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->useFilterParams()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->useFilterData01()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->useFilterData02()V

    return-void
.end method


# virtual methods
.method protected computeGaussCoefs()V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    const v15, 0x3f19999a    # 0.6f

    mul-float/2addr v14, v15

    float-to-int v7, v14

    .local v7, "interFactor":I
    const/4 v11, 0x0

    .local v11, "power":F
    const/16 v14, 0x40

    if-le v7, v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    int-to-float v15, v7

    div-float v11, v14, v15

    const/16 v7, 0x40

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mData1:[F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mData2:[F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    :goto_1
    return-void

    :cond_0
    const/4 v14, 0x1

    if-ge v7, v14, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const v11, 0x3fd6c12b

    goto :goto_0

    :cond_2
    const v5, 0x402df854    # (float)Math.E

    .local v5, "e":F
    const v10, 0x40490fdb    # (float)Math.PI

    .local v10, "pi":F
    const v14, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    mul-float/2addr v14, v15

    const v15, 0x3f19999a    # 0.6f

    add-float v13, v14, v15

    .local v13, "sigma":F
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v10

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    float-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    div-double v14, v14, v16

    double-to-float v2, v14

    .local v2, "coeff1":F
    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v13

    mul-float/2addr v15, v13

    div-float v3, v14, v15

    .local v3, "coeff2":F
    const/4 v9, 0x0

    .local v9, "normalizeFactor":F
    const/16 v14, 0x80

    new-array v4, v14, [F

    .local v4, "data":[F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    int-to-float v15, v7

    div-float v8, v14, v15

    .local v8, "interpalationStep":F
    const/4 v12, 0x0

    .local v12, "r":F
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    if-ge v6, v7, :cond_3

    float-to-double v14, v2

    float-to-double v0, v5

    move-wide/from16 v16, v0

    mul-float v18, v12, v12

    mul-float v18, v18, v3

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v4, v6

    aget v14, v4, v6

    add-float/2addr v9, v14

    add-float/2addr v12, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    mul-float v15, v2, v11

    aput v15, v4, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v9, v14

    const/4 v14, 0x0

    aget v14, v4, v14

    add-float/2addr v9, v14

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_4

    aget v14, v4, v6

    div-float/2addr v14, v9

    aput v14, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mData1:[F

    aget v15, v4, v6

    aput v15, v14, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mData2:[F

    aput v12, v14, v6

    add-float/2addr v12, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setParam(IF)V

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setParam(IF)V

    const/4 v14, 0x2

    int-to-float v15, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setParam(IF)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setFilterData01Changed()V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setFilterData02Changed()V

    goto/16 :goto_1
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x437a0000    # 250.0f

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->computeGaussCoefs()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

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

    iget v1, p0, Landroid/graphics/ImageFilter$GaussianBlurFilter;->mRadius:F

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

    invoke-virtual {p0, v1, v0, v4}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;->setSamplingRate(IFF)V

    return-void
.end method
