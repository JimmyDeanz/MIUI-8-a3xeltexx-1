.class public Landroid/graphics/ImageFilter$DistortionFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistortionFilter"
.end annotation


# static fields
.field private static final DISTORTION:I = 0x0

.field private static final MAX_RADIUS:F = 1024.0f

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n   vec2 xy = 2.0 * outTexCoords.xy - 1.0;\n   vec2 uv;\n   float d = length(xy);\n   if ( d < 1.0 ) {\n       float theta = atan(xy.y, xy.x);\n       float radius = length(xy);\n       radius = pow(radius, filterParams[0]+1.0);\n       xy.x = radius * cos(theta);\n       xy.y = radius * sin(theta);\n       uv = 0.5 * (xy + 1.0);\n   } else {\n       uv = outTexCoords.xy;\n   }\n   gl_FragColor = texture2D(baseSampler, uv);\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$DistortionFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Landroid/graphics/ImageFilter$DistortionFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    return-void
.end method


# virtual methods
.method public setDistortion(F)V
    .locals 3
    .param p1, "power"    # F

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    :goto_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$DistortionFilter;->setParam(IF)V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$DistortionFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/graphics/ImageFilter$DistortionFilter;->mRadius:F

    goto :goto_0
.end method
