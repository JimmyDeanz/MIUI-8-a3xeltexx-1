.class public Landroid/graphics/ImageFilter$ZoomBlurFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomBlurFilter"
.end annotation


# static fields
.field private static final QUALITY:I = 0x1

.field private static final ZOOM:I

.field private static mFragmentShaderCode:Ljava/lang/String;

.field private static mVertexShaderCode:Ljava/lang/String;


# instance fields
.field private mQuality:I

.field private mZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nvarying vec2 Pos;\nvoid main() {\n\toutTexCoords = texCoords;\n\tgl_Position = position;\n\tPos = position.xy;\n}\n"

    sput-object v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mVertexShaderCode:Ljava/lang/String;

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 Pos;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nvoid main(void) {\nvec2 xy = 2.0 * outTexCoords.xy - 1.0;\nvec2 uv = (vec2(Pos.x, Pos.y)+ vec2(1.0))/vec2(2.0);\nvec2 dir = 0.5 - uv;\nfloat dist = sqrt(dir.x*dir.x + dir.y*dir.y);\ndir = dir/dist;\nvec4 color = texture2D(baseSampler,uv);\nfloat scaledStep = 0.0;\nvec4 sum = color;\nfor(int i = 0; i < int(filterParams[1])/2; i++){\n\tsum += texture2D( baseSampler, uv + dir * -filterData01[i]);\n\tsum += texture2D( baseSampler, uv + dir * filterData01[i]);\n}\nsum *= 1.0/filterParams[1];\nfloat t = dist * filterParams[0];\nt = clamp( t ,0.0, 1.0);\ngl_FragColor = mix( color, sum, t );\n}\n"

    sput-object v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mVertexShaderCode:Ljava/lang/String;

    sget-object v1, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mZoom:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->useFilterParams()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->useFilterData01()V

    return-void
.end method

.method private computeZoomBlur()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    const/16 v2, 0xa

    iget v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    if-ge v1, v2, :cond_0

    iput v2, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    :cond_0
    iget v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    if-le v1, v3, :cond_1

    iput v3, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mData1:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->setFilterData01Changed()V

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mZoom:F

    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->setParam(IF)V

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->setParam(IF)V

    return-void
.end method

.method private paramsChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->computeZoomBlur()V

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->notifyWorkerFilters()V

    return-void
.end method


# virtual methods
.method public setPivot(FF)V
    .locals 0
    .param p1, "xRatio"    # F
    .param p2, "yRatio"    # F

    .prologue
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    iput p1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->paramsChanged()V

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    iput p1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mZoom:F

    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->paramsChanged()V

    return-void
.end method
