.class public Landroid/graphics/ImageFilter$SgiBlurFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SgiBlurFilter"
.end annotation


# static fields
.field private static final MAX_RADIUS:F = 60.0f

.field private static final RADIUS:I = 0x1

.field private static mFragmentShaderCode:Ljava/lang/String;

.field private static mVertexShaderCode:[Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attribute vec2 texCoords;\nattribute vec4 position;\nuniform float areaW;\nuniform float sampleRate;\nuniform float filterParams[16];\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nvoid main() {\n   outTexCoords = texCoords;\n   float v = filterParams[1] / 6.0 / areaW;\n   vNeighborTexCoord[0]  = outTexCoords + vec2(-6.0 * v, 0.0);\n   vNeighborTexCoord[1]  = outTexCoords + vec2(-5.0 * v, 0.0);\n   vNeighborTexCoord[2]  = outTexCoords + vec2(-4.0 * v, 0.0);\n   vNeighborTexCoord[3]  = outTexCoords + vec2(-3.0 * v, 0.0);\n   vNeighborTexCoord[4]  = outTexCoords + vec2(-2.0 * v, 0.0);\n   vNeighborTexCoord[5]  = outTexCoords + vec2(-1.0 * v, 0.0);\n   vNeighborTexCoord[6]  = outTexCoords + vec2( 1.0 * v, 0.0);\n   vNeighborTexCoord[7]  = outTexCoords + vec2( 2.0 * v, 0.0);\n   vNeighborTexCoord[8]  = outTexCoords + vec2( 3.0 * v, 0.0);\n   vNeighborTexCoord[9]  = outTexCoords + vec2( 4.0 * v, 0.0);\n   vNeighborTexCoord[10] = outTexCoords + vec2( 5.0 * v, 0.0);\n   vNeighborTexCoord[11] = outTexCoords + vec2( 6.0 * v, 0.0);\n   gl_Position = position;\n}\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attribute vec2 texCoords;\nattribute vec4 position;\nuniform float areaH;\nuniform float sampleRate;\nuniform float filterParams[16];\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nvoid main() {\n   outTexCoords = texCoords;\n   float v = filterParams[1] / 6.0 / areaH;\n   vNeighborTexCoord[0]  = outTexCoords + vec2(0.0, -6.0 * v );\n   vNeighborTexCoord[1]  = outTexCoords + vec2(0.0, -5.0 * v );\n   vNeighborTexCoord[2]  = outTexCoords + vec2(0.0, -4.0 * v );\n   vNeighborTexCoord[3]  = outTexCoords + vec2(0.0, -3.0 * v );\n   vNeighborTexCoord[4]  = outTexCoords + vec2(0.0, -2.0 * v );\n   vNeighborTexCoord[5]  = outTexCoords + vec2(0.0, -1.0 * v );\n   vNeighborTexCoord[6]  = outTexCoords + vec2(0.0,  1.0 * v );\n   vNeighborTexCoord[7]  = outTexCoords + vec2(0.0,  2.0 * v );\n   vNeighborTexCoord[8]  = outTexCoords + vec2(0.0,  3.0 * v );\n   vNeighborTexCoord[9]  = outTexCoords + vec2(0.0,  4.0 * v );\n   vNeighborTexCoord[10] = outTexCoords + vec2(0.0,  5.0 * v );\n   vNeighborTexCoord[11] = outTexCoords + vec2(0.0,  6.0 * v );\n   gl_Position = position;\n}\n"

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/ImageFilter$SgiBlurFilter;->mVertexShaderCode:[Ljava/lang/String;

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nuniform sampler2D baseSampler;\n\nvoid main(void) {\n   highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[0])  * 0.00903788620091937;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[1])  * 0.0217894371884468;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[2])  * 0.0447649434011506;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[3])  * 0.0783687553896893;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[4])  * 0.116912444814134;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[5])  * 0.148624846131112;\n   fragColorBlur += texture2D(baseSampler, outTexCoords        )  * 0.161003373749805;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[6])  * 0.148624846131112;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[7])  * 0.116912444814134;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[8])  * 0.0783687553896893;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[9])  * 0.0447649434011506;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[10]) * 0.0217894371884468;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[11]) * 0.00903788620091937;\n   gl_FragColor = fragColorBlur;\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$SgiBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x2

    sget-object v1, Landroid/graphics/ImageFilter$SgiBlurFilter;->mVertexShaderCode:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/ImageFilter$SgiBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$SgiBlurFilter;->mRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$SgiBlurFilter;->setRadius(F)V

    return-void
.end method


# virtual methods
.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    iget v0, p0, Landroid/graphics/ImageFilter$SgiBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/ImageFilter$SgiBlurFilter;->mRadius:F

    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/ImageFilter$SgiBlurFilter;->mRadius:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$SgiBlurFilter;->setParam(IF)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$SgiBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$SgiBlurFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method protected setupDownSampling()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/graphics/ImageFilter$SgiBlurFilter;->mRadius:F

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v0, v1, v2

    .local v0, "downSampleRate":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v3}, Landroid/graphics/ImageFilter$SgiBlurFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Landroid/graphics/ImageFilter$SgiBlurFilter;->setSamplingRate(IFF)V

    return-void
.end method
