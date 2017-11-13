.class public Landroid/graphics/ImageFilter$VignetteFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VignetteFilter"
.end annotation


# static fields
.field private static final MAX_RADIUS:F = 1024.0f

.field private static final RADIUS:I

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2578
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 resolution;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvoid main(void) {\n   vec2 u_resolution = vec2(areaW, areaH);\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n   vec2 relativePosition = gl_FragCoord.xy / u_resolution - 0.5;\n   float len = length(relativePosition);\n   float vignette = smoothstep(filterParams[0] + 0.1, filterParams[0] - 0.1, len);\n   texColor.rgb = mix(texColor.rgb, texColor.rgb * vignette, 0.9);\n   gl_FragColor = texColor;\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$VignetteFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2603
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Landroid/graphics/ImageFilter$VignetteFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    .line 2604
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$VignetteFilter;->useFilterParams()V

    .line 2605
    return-void
.end method


# virtual methods
.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    .line 2616
    iget v0, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2618
    iget v0, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 2619
    iput v2, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    .line 2625
    :goto_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$VignetteFilter;->setParam(IF)V

    .line 2626
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$VignetteFilter;->notifyWorkerFilters()V

    .line 2628
    :cond_0
    return-void

    .line 2620
    :cond_1
    iget v0, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2621
    iput v1, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    goto :goto_0

    .line 2623
    :cond_2
    iput p1, p0, Landroid/graphics/ImageFilter$VignetteFilter;->mRadius:F

    goto :goto_0
.end method
