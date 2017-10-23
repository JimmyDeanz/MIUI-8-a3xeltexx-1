.class public Landroid/graphics/ImageFilter$DirectionalBlurFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionalBlurFilter"
.end annotation


# static fields
.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x0

.field private static final STEP:I = 0x1

.field private static final STEP_COUNT:I = 0x2

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mQuality:F

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1780
    const-string/jumbo v0, "precision highp float;varying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float nWidthCoef;\n\nvoid main(void) {\n\t vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n\t float step = filterParams[1];\n\t float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n\t \t scaledStep = step * filterData02[i] * nWidthCoef;\n\t\t texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n\t\t texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n\t gl_FragColor = fragColorBlur;\n}\n"

    sput-object v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1814
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    .line 1805
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mQuality:F

    .line 1815
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->useFilterData01()V

    .line 1816
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->useFilterData02()V

    .line 1817
    return-void
.end method


# virtual methods
.method protected computeGaussCoefs()V
    .locals 18

    .prologue
    .line 1857
    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mQuality:F

    mul-float/2addr v12, v13

    float-to-int v6, v12

    .line 1858
    .local v6, "interFactor":I
    const/4 v9, 0x0

    .line 1860
    .local v9, "power":F
    const/16 v12, 0x40

    if-le v6, v12, :cond_0

    .line 1861
    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    int-to-float v13, v6

    div-float v9, v12, v13

    .line 1862
    const/16 v6, 0x40

    .line 1870
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_2

    .line 1871
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mData1:[F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 1872
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mData2:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 1912
    :goto_1
    return-void

    .line 1863
    :cond_0
    const/4 v12, 0x1

    if-ge v6, v12, :cond_1

    .line 1864
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1865
    const/4 v6, 0x1

    goto :goto_0

    .line 1867
    :cond_1
    const v9, 0x3fd6c12b

    goto :goto_0

    .line 1876
    :cond_2
    const v12, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    mul-float/2addr v12, v13

    const v13, 0x3f19999a    # 0.6f

    add-float v11, v12, v13

    .line 1877
    .local v11, "sigma":F
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    double-to-float v2, v12

    .line 1878
    .local v2, "coeff1":F
    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    div-float v3, v12, v13

    .line 1879
    .local v3, "coeff2":F
    const/4 v8, 0x0

    .line 1880
    .local v8, "normalizeFactor":F
    const/16 v12, 0x80

    new-array v4, v12, [F

    .line 1881
    .local v4, "data":[F
    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    int-to-float v13, v6

    div-float v7, v12, v13

    .line 1882
    .local v7, "interpalationStep":F
    const/4 v10, 0x0

    .line 1884
    .local v10, "r":F
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 1885
    float-to-double v12, v2

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    mul-float v16, v10, v10

    mul-float v16, v16, v3

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v9

    mul-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v4, v5

    .line 1886
    aget v12, v4, v5

    add-float/2addr v8, v12

    .line 1887
    add-float/2addr v10, v7

    .line 1884
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1890
    :cond_3
    const/4 v12, 0x0

    mul-float v13, v2, v9

    aput v13, v4, v12

    .line 1891
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    .line 1892
    const/4 v12, 0x0

    aget v12, v4, v12

    add-float/2addr v8, v12

    .line 1894
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_4

    .line 1895
    aget v12, v4, v5

    div-float/2addr v12, v8

    aput v12, v4, v5

    .line 1894
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1898
    :cond_4
    const/4 v10, 0x0

    .line 1900
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_5

    .line 1901
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mData1:[F

    aget v13, v4, v5

    aput v13, v12, v5

    .line 1902
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mData2:[F

    aput v10, v12, v5

    .line 1903
    add-float/2addr v10, v7

    .line 1900
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1906
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->setParam(IF)V

    .line 1907
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->setParam(IF)V

    .line 1908
    const/4 v12, 0x2

    int-to-float v13, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->setParam(IF)V

    .line 1910
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->setFilterData01Changed()V

    .line 1911
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->setFilterData02Changed()V

    goto/16 :goto_1
.end method

.method public setAngle(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 1836
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter$GenericImageFilter;->setValue(IF)V

    .line 1837
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 1827
    return-void
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x437a0000    # 250.0f

    const/4 v1, 0x0

    .line 1842
    iget v0, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1843
    iget v0, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1844
    iput v2, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    .line 1850
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->computeGaussCoefs()V

    .line 1851
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->notifyWorkerFilters()V

    .line 1853
    :cond_0
    return-void

    .line 1845
    :cond_1
    iget v0, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1846
    iput v1, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    goto :goto_0

    .line 1848
    :cond_2
    iput p1, p0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;->mRadius:F

    goto :goto_0
.end method
