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
    .line 2639
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nvarying vec2 Pos;\nvoid main() {\n\toutTexCoords = texCoords;\n\tgl_Position = position;\n\tPos = position.xy;\n}\n"

    sput-object v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mVertexShaderCode:Ljava/lang/String;

    .line 2650
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 Pos;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nvoid main(void) {\nvec2 xy = 2.0 * outTexCoords.xy - 1.0;\nvec2 uv = (vec2(Pos.x, Pos.y)+ vec2(1.0))/vec2(2.0);\nvec2 dir = 0.5 - uv;\nfloat dist = sqrt(dir.x*dir.x + dir.y*dir.y);\ndir = dir/dist;\nvec4 color = texture2D(baseSampler,uv);\nfloat scaledStep = 0.0;\nvec4 sum = color;\nfor(int i = 0; i < int(filterParams[1])/2; i++){\n\tsum += texture2D( baseSampler, uv + dir * -filterData01[i]);\n\tsum += texture2D( baseSampler, uv + dir * filterData01[i]);\n}\nsum *= 1.0/filterParams[1];\nfloat t = dist * filterParams[0];\nt = clamp( t ,0.0, 1.0);\ngl_FragColor = mix( color, sum, t );\n}\n"

    sput-object v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2686
    sget-object v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mVertexShaderCode:Ljava/lang/String;

    sget-object v1, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mZoom:F

    .line 2681
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    .line 2687
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->useFilterParams()V

    .line 2688
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->useFilterData01()V

    .line 2689
    return-void
.end method

.method private computeZoomBlur()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    const/16 v2, 0xa

    .line 2730
    iget v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    if-ge v1, v2, :cond_0

    .line 2731
    iput v2, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    .line 2732
    :cond_0
    iget v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    if-le v1, v3, :cond_1

    .line 2733
    iput v3, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    .line 2735
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 2736
    iget-object v1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mData1:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 2735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2740
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->setFilterData01Changed()V

    .line 2742
    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mZoom:F

    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->setParam(IF)V

    .line 2743
    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->setParam(IF)V

    .line 2744
    return-void
.end method

.method private paramsChanged()V
    .locals 0

    .prologue
    .line 2724
    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->computeZoomBlur()V

    .line 2725
    invoke-virtual {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->notifyWorkerFilters()V

    .line 2726
    return-void
.end method


# virtual methods
.method public setPivot(FF)V
    .locals 0
    .param p1, "xRatio"    # F
    .param p2, "yRatio"    # F

    .prologue
    .line 2704
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 2719
    iput p1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mQuality:I

    .line 2720
    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->paramsChanged()V

    .line 2721
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 2714
    iput p1, p0, Landroid/graphics/ImageFilter$ZoomBlurFilter;->mZoom:F

    .line 2715
    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;->paramsChanged()V

    .line 2716
    return-void
.end method
