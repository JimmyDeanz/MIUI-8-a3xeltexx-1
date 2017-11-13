.class public Landroid/graphics/ImageFilter$MosaicFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MosaicFilter"
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
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform mat4 transform;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvoid main(void) {\n\t float radius_h = filterParams[0] / areaW;\n\t float radius_v = filterParams[0] / areaH;\n\t vec2 texCoord = vec2((floor(outTexCoords.s / radius_h) + 0.5) * radius_h, (floor(outTexCoords.t / radius_v) + 0.5) * radius_v);\n\t gl_FragColor = texture2D(baseSampler, texCoord);\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$MosaicFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Landroid/graphics/ImageFilter$MosaicFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$MosaicFilter;->useFilterParams()V

    return-void
.end method


# virtual methods
.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    :goto_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$MosaicFilter;->setParam(IF)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$MosaicFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/graphics/ImageFilter$MosaicFilter;->mRadius:F

    goto :goto_0
.end method
