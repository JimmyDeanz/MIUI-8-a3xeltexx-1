.class public Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapColorMaskFilter"
.end annotation


# static fields
.field private static final ALPHA:I = 0x4

.field private static final BLUE:I = 0x3

.field private static final ENABLE_GRADIENT:I = 0x0

.field private static final GRADIENT_ALPHA:I = 0x8

.field private static final GRADIENT_BLUE:I = 0x7

.field private static final GRADIENT_ENDX:I = 0xb

.field private static final GRADIENT_ENDY:I = 0xc

.field private static final GRADIENT_GREEN:I = 0x6

.field private static final GRADIENT_RED:I = 0x5

.field private static final GRADIENT_STARTX:I = 0x9

.field private static final GRADIENT_STARTY:I = 0xa

.field private static final GREEN:I = 0x2

.field private static final RED:I = 0x1

.field private static mFragmentShaderCodeGradient:Ljava/lang/String;

.field private static mFragmentShaderCodeMask:Ljava/lang/String;


# instance fields
.field private mGradientEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n    vec4 startColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]);\n    vec4 endColor = vec4(filterParams[5], filterParams[6], filterParams[7], filterParams[8]);\n    vec2 startPoint = vec2(filterParams[9], filterParams[10]);\n    vec2 endPoint = vec2(filterParams[11], filterParams[12]);\n    vec2 send = endPoint - startPoint;\n    vec2 scur = outTexCoords - startPoint;\n    float proj = dot(send, scur) / dot(send, send);\n    vec4 mask = mix(startColor, endColor, smoothstep(0.0, 1.0, proj));\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    mask.rgb *= mask.a;\n    gl_FragColor = mask + texColor * (1.0 - mask.a);\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n\tvec4 maskColor = texture2D(maskSampler, outTexCoords);\n\tvec4 domColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]) * texColor;\n\tfloat alpha = domColor.a * maskColor.a;\n\tdomColor.rgb = domColor.rgb * alpha;\n\tdomColor.a = alpha;\n\tgl_FragColor = domColor + texColor * (1.0 - domColor.a);\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mGradientEnabled:Z

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->useFilterParams()V

    # getter for: Landroid/graphics/ImageFilter;->sLogingEnabled:Z
    invoke-static {}, Landroid/graphics/ImageFilter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    const-string v1, "{0x%x}->BitmapColorMaskFilter()"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public enableGradient()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    iget-boolean v0, p0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mGradientEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mGradientEnabled:Z

    new-array v1, v3, [Ljava/lang/String;

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v0, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    iget-boolean v0, p0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v4

    invoke-virtual {p0, v3, v1, v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->notifyWorkerFilters()V

    return-void

    :cond_1
    sget-object v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public resetGradient()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    # getter for: Landroid/graphics/ImageFilter;->sLogingEnabled:Z
    invoke-static {}, Landroid/graphics/ImageFilter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    const-string v1, "{0x%x}->BitmapColorMaskFilter.resetGradient()"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    iget-boolean v0, p0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mGradientEnabled:Z

    if-ne v5, v0, :cond_1

    iput-boolean v4, p0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mGradientEnabled:Z

    new-array v1, v5, [Ljava/lang/String;

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v0, v1, v4

    new-array v2, v5, [Ljava/lang/String;

    iget-boolean v0, p0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v4

    invoke-virtual {p0, v5, v1, v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->notifyWorkerFilters()V

    return-void

    :cond_2
    sget-object v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/ImageFilter$GenericImageFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v0, 0x2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v0, 0x3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v0, 0x4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    return-void
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .local v3, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    .local v2, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    .local v1, "b":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    .local v0, "a":F
    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setColor(FFFF)V

    return-void
.end method

.method public setGradient(FFIFFI)V
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "startColor"    # I
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "endColor"    # I

    .prologue
    # getter for: Landroid/graphics/ImageFilter;->sLogingEnabled:Z
    invoke-static {}, Landroid/graphics/ImageFilter;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HWUI_IMAGE_FILTER"

    const-string v5, "{0x%x}->BitmapColorMaskFilter.setGradient(%f,%f,0x%x,  %f, %f, 0x%x)"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v3, v4, v5

    .local v3, "r":F
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v2, v4, v5

    .local v2, "g":F
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v1, v4, v5

    .local v1, "b":F
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v0, v4, v5

    .local v0, "a":F
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p6}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v3, v4, v5

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v2, v4, v5

    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v1, v4, v5

    invoke-static {p6}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v0, v4, v5

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/16 v4, 0x9

    invoke-virtual {p0, v4, p1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/16 v4, 0xa

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/16 v4, 0xb

    invoke-virtual {p0, v4, p4}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    const/16 v4, 0xc

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setParam(IF)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->enableGradient()V

    return-void
.end method
