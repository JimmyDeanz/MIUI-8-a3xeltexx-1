.class public Landroid/graphics/ImageFilter$DesaturationFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesaturationFilter"
.end annotation


# static fields
.field private static final DEASATURATION:I = 0x0

.field private static final MAX_DEASATURATION:F = 1.0f

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mDesaturation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n\t vec4 texColor = texture2D(baseSampler, outTexCoords);\n\t float lum = dot(vec3(0.2126,0.7152,0.0722), texColor.rgb);\n\t vec4 grayColor = vec4(lum, lum, lum, texColor.a);\n\t gl_FragColor = mix(grayColor, texColor, filterParams[0]);\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$DesaturationFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Landroid/graphics/ImageFilter$DesaturationFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/graphics/ImageFilter$DesaturationFilter;->setSaturation(F)V

    return-void
.end method


# virtual methods
.method public setSaturation(F)V
    .locals 3
    .param p1, "saturation"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    :goto_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$DesaturationFilter;->setParam(IF)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DesaturationFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/graphics/ImageFilter$DesaturationFilter;->mDesaturation:F

    goto :goto_0
.end method
