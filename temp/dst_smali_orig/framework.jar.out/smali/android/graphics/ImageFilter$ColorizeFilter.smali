.class public Landroid/graphics/ImageFilter$ColorizeFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorizeFilter"
.end annotation


# static fields
.field private static final ALPHA:I = 0x3

.field private static final BLEND_RATIO:I = 0x4

.field private static final BLUE:I = 0x2

.field private static final GREEN:I = 0x1

.field private static final RED:I

.field private static mFragmentShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n\t vec4 texColor = texture2D(baseSampler, outTexCoords);\n\t vec4 colorizeColor = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]);\n\t gl_FragColor = mix(colorizeColor, texColor, filterParams[4]);\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$ColorizeFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Landroid/graphics/ImageFilter$ColorizeFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ColorizeFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$ColorizeFilter;->setBlendRatio(F)V

    return-void
.end method


# virtual methods
.method public setBlendRatio(F)V
    .locals 4
    .param p1, "ratio"    # F

    .prologue
    iget-object v0, p0, Landroid/graphics/ImageFilter$ColorizeFilter;->mParams:[F

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ColorizeFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ColorizeFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 5
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/graphics/ImageFilter$ColorizeFilter;->mParams:[F

    const/4 v1, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/ImageFilter$ColorizeFilter;->mParams:[F

    const/4 v1, 0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/ImageFilter$ColorizeFilter;->mParams:[F

    const/4 v1, 0x2

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/ImageFilter$ColorizeFilter;->mParams:[F

    const/4 v1, 0x3

    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ColorizeFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ColorizeFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/ImageFilter$ColorizeFilter;->setColor(FFFF)V

    return-void
.end method
