.class public Landroid/graphics/ImageFilter$DropShadowFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropShadowFilter"
.end annotation


# static fields
.field private static final ALPHA:I = 0x6

.field private static final BLUE:I = 0x5

.field private static final CYCLES_COUNT:I = 0x7

.field private static final DIRECTION_X:I = 0x1

.field private static final DIRECTION_Y:I = 0x2

.field private static final DISTANCE:I = 0x0

.field private static final GREEN:I = 0x4

.field private static final RED:I = 0x3

.field private static final SHORTDISTANCE:I = 0x8

.field private static mFragmentShaderCode:[Ljava/lang/String;


# instance fields
.field private mAngle:F

.field private mDistance:F

.field private mQuality:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1988
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "precision highp float;\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvoid main(void) {\n    vec2 uv = vec2(outTexCoords);\n    float c = areaW / areaH;\n    vec2 vDirection = vec2(filterParams[1] / areaW, filterParams[2] / areaH) * filterParams[0];\n    if(areaW>areaH) vDirection.y*=c; else vDirection.x/=c; \n    float shadowalpha = filterParams[6];\n    vec4 savedcolor = texture2D(baseSampler, uv);\n    vec4 pixel = vec4(0.0);\n    float ratio = 0.0;\n    float filter = 0.0;\n    float count = 0.0;\n    float distantRatio = 0.0;\n    float ccl = filterParams[7];\n    float divider = 1.0/ccl;\n    for (float i = 0.0; i < ccl; i += 1.0) {\n        distantRatio = (i < 5.0) ? ((i+1.0) / 5.0) : 1.0;\n        uv -= vDirection * distantRatio;\n        uv = clamp(uv, 0.0, 1.0);\n        pixel = texture2D(baseSampler, uv);\n        if (pixel.a > 0.0)\n            break;\n        count += divider;\n    }\n    ratio = min(count, 1.0) * 1.570797;\n    filter = 1.0 - min(sin(ratio) + 0.2, 1.0);\n    gl_FragColor = vec4(savedcolor.rgb * savedcolor.a, filter * shadowalpha);\n}\n\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "precision highp float;\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvoid main(void) {\n    float c = areaW / areaH;\n    vec2 vDirection = vec2(filterParams[1] / areaW, filterParams[2] / areaH) * filterParams[0];\n    if(areaW>areaH) vDirection.y*=c; else vDirection.x/=c; \n    vec2 uv = vec2(outTexCoords);\n    vec4 sceneColor = texture2D(originalSampler, outTexCoords);\n    vec4 pixel = vec4(0.0);\n    vec4 weightedShadowColor = (1.0 - sceneColor.a) * vec4(filterParams[3], filterParams[4], filterParams[5], 1.0);\n    vec4 dropShadowColor = vec4(0.0);\n    float count = 0.0;\n    float height = 0.0;\n    float ccl = filterParams[7];\n    for (float i = 0.0; i < ccl; i += 1.0) {\n        uv = clamp(uv, 0.0, 1.0);\n        pixel = texture2D(baseSampler, uv);\n        height = dot(pixel.rgb, vec3(1.0));\n        if (height > 0.0)\n            continue;\n        count += 1.0;\n        dropShadowColor += pixel.a*weightedShadowColor;\n        uv -= vDirection;\n    }\n    dropShadowColor *= count / (count*count + 0.0001);\n    gl_FragColor = sceneColor + dropShadowColor;\n}\n\n"

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/ImageFilter$DropShadowFilter;->mFragmentShaderCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, -0x3ee00000    # -10.0f

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2079
    const/4 v0, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v2, v1, v7

    sget-object v2, Landroid/graphics/ImageFilter$DropShadowFilter;->mFragmentShaderCode:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2073
    iput v5, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mAngle:F

    .line 2074
    const v0, 0x3b449ba6    # 0.003f

    iput v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mDistance:F

    .line 2075
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mQuality:F

    .line 2081
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$DropShadowFilter;->setDistance(F)V

    .line 2082
    invoke-virtual {p0, v5}, Landroid/graphics/ImageFilter$DropShadowFilter;->setAngle(F)V

    .line 2084
    invoke-virtual {p0, v3, v6, v6, v3}, Landroid/graphics/ImageFilter$DropShadowFilter;->setShadowColor(FFFF)V

    .line 2085
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$DropShadowFilter;->setQuality(F)V

    .line 2087
    invoke-virtual {p0, v7}, Landroid/graphics/ImageFilter$DropShadowFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$CustomFilter;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/ImageFilter$CustomFilter;->setValue(IF)V

    .line 2089
    invoke-virtual {p0, v4}, Landroid/graphics/ImageFilter$DropShadowFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$CustomFilter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/ImageFilter$CustomFilter;->setValue(IF)V

    .line 2090
    invoke-virtual {p0, v4}, Landroid/graphics/ImageFilter$DropShadowFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$CustomFilter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/ImageFilter$CustomFilter;->setValue(IF)V

    .line 2091
    invoke-virtual {p0, v4}, Landroid/graphics/ImageFilter$DropShadowFilter;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$CustomFilter;

    const/4 v1, 0x6

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/ImageFilter$CustomFilter;->setValue(IF)V

    .line 2093
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->preSetupShader()V

    .line 2094
    return-void
.end method


# virtual methods
.method protected preSetupShader()V
    .locals 10

    .prologue
    .line 2154
    iget v7, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mAngle:F

    const/high16 v8, 0x43340000    # 180.0f

    div-float/2addr v7, v8

    const v8, 0x40490fd8

    mul-float v4, v7, v8

    .line 2157
    .local v4, "radian":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 2158
    .local v5, "xdir":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 2160
    .local v6, "ydir":F
    const/16 v3, 0x12c

    .line 2161
    .local v3, "filterTextureWidth":I
    const/16 v2, 0x12c

    .line 2164
    .local v2, "filterTextureHeight":I
    iget v7, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mDistance:F

    mul-float/2addr v5, v7

    .line 2165
    iget v7, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mDistance:F

    mul-float/2addr v6, v7

    .line 2166
    iget v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mQuality:F

    .line 2167
    .local v0, "cyclesCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v8, v0, v8

    div-float v1, v7, v8

    .line 2169
    .local v1, "distance":F
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v1}, Landroid/graphics/ImageFilter$DropShadowFilter;->setParam(IF)V

    .line 2170
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v5}, Landroid/graphics/ImageFilter$DropShadowFilter;->setParam(IF)V

    .line 2171
    const/4 v7, 0x2

    invoke-virtual {p0, v7, v6}, Landroid/graphics/ImageFilter$DropShadowFilter;->setParam(IF)V

    .line 2172
    const/4 v7, 0x7

    invoke-virtual {p0, v7, v0}, Landroid/graphics/ImageFilter$DropShadowFilter;->setParam(IF)V

    .line 2174
    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v7

    .line 2175
    const/16 v7, 0x8

    invoke-virtual {p0, v7, v1}, Landroid/graphics/ImageFilter$DropShadowFilter;->setParam(IF)V

    .line 2177
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->notifyWorkerFilters()V

    .line 2178
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 2135
    iput p1, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mAngle:F

    .line 2136
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->preSetupShader()V

    .line 2137
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 2123
    iput p1, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mDistance:F

    .line 2124
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->preSetupShader()V

    .line 2125
    return-void
.end method

.method public setQuality(F)V
    .locals 5
    .param p1, "quality"    # F

    .prologue
    .line 2147
    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 2148
    .local v0, "scaleQuality":F
    iput v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mQuality:F

    .line 2149
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->preSetupShader()V

    .line 2150
    return-void
.end method

.method public setShadowColor(FFFF)V
    .locals 5
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2107
    iget-object v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mParams:[F

    const/4 v1, 0x3

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2108
    iget-object v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mParams:[F

    const/4 v1, 0x4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2109
    iget-object v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mParams:[F

    const/4 v1, 0x5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2110
    iget-object v0, p0, Landroid/graphics/ImageFilter$DropShadowFilter;->mParams:[F

    const/4 v1, 0x6

    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2111
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->setFilterParamsChanged()V

    .line 2112
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DropShadowFilter;->preSetupShader()V

    .line 2113
    return-void
.end method
