.class public Landroid/graphics/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFilter$BitmapMaskFilter;,
        Landroid/graphics/ImageFilter$ZoomBlurFilter;,
        Landroid/graphics/ImageFilter$VignetteFilter;,
        Landroid/graphics/ImageFilter$SgiBlurFilter;,
        Landroid/graphics/ImageFilter$MosaicFilter;,
        Landroid/graphics/ImageFilter$GaussianBlurFilter;,
        Landroid/graphics/ImageFilter$DropShadowFilter;,
        Landroid/graphics/ImageFilter$DistortionFilter;,
        Landroid/graphics/ImageFilter$DirectionalBlurFilter;,
        Landroid/graphics/ImageFilter$DesaturationFilter;,
        Landroid/graphics/ImageFilter$CosineBlurFilter;,
        Landroid/graphics/ImageFilter$ColorizeFilter;,
        Landroid/graphics/ImageFilter$ColorClampFilter;,
        Landroid/graphics/ImageFilter$BlendingFilter;,
        Landroid/graphics/ImageFilter$BitmapColorMaskFilter;,
        Landroid/graphics/ImageFilter$GenericImageFilter;,
        Landroid/graphics/ImageFilter$BlurFilter;,
        Landroid/graphics/ImageFilter$CustomFilter;
    }
.end annotation


# static fields
.field public static final DEBUG_HWUI_IMAGE_FILTER_ENABLE_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.enable"

.field public static final DEBUG_HWUI_IMAGE_FILTER_LOG_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.log"

.field private static final LOG_TAG:Ljava/lang/String; = "HWUI_IMAGE_FILTER"

.field public static final TYPE_BITMAP_COLOR:I = 0x34

.field public static final TYPE_BITMAP_MASK:I = 0x34

.field public static final TYPE_BLENDING:I = 0x35

.field public static final TYPE_BLUR:I = 0x36

.field public static final TYPE_COLORIZE:I = 0x10

.field public static final TYPE_COLOR_CLAMP:I = 0x12

.field public static final TYPE_COSINE_BLUR:I = 0x4

.field private static final TYPE_CUSTOM_FILTER:I = 0xee

.field public static final TYPE_DESATURATION:I = 0x11

.field public static final TYPE_DIRECTIONAL_BLUR:I = 0x2

.field public static final TYPE_DISTORTION:I = 0x31

.field public static final TYPE_DROP_SHADOW:I = 0x37

.field public static final TYPE_GAUSSIAN_BLUR:I = 0x1

.field public static final TYPE_MOSAIC:I = 0x33

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SGI_BLUR:I = 0x5

.field public static final TYPE_VIGNETTE:I = 0x32

.field public static final TYPE_ZOOM_BLUR:I = 0x3

.field private static final sLogingEnabled:Z


# instance fields
.field public final mNativeImageFilter:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "debug.hwui.imagefilter.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/graphics/ImageFilter;->sLogingEnabled:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "filterType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/graphics/ImageFilter;->native_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/ImageFilter;)V
    .locals 2
    .param p1, "filter"    # Landroid/graphics/ImageFilter;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->native_copy(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/graphics/ImageFilter;->sLogingEnabled:Z

    return v0
.end method

.method public static createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/ImageFilter$CustomFilter;
    .locals 1
    .param p0, "vertexShaderCode"    # Ljava/lang/String;
    .param p1, "fragmentShaderCode"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/ImageFilter$CustomFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageFilter$CustomFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createImageFilter(I)Landroid/graphics/ImageFilter;
    .locals 1
    .param p0, "type"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$GaussianBlurFilter;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/graphics/ImageFilter$CosineBlurFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$CosineBlurFilter;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/graphics/ImageFilter$SgiBlurFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$SgiBlurFilter;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Landroid/graphics/ImageFilter$ColorizeFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$ColorizeFilter;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/graphics/ImageFilter$DesaturationFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$DesaturationFilter;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Landroid/graphics/ImageFilter$ColorClampFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$ColorClampFilter;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Landroid/graphics/ImageFilter$DistortionFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$DistortionFilter;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Landroid/graphics/ImageFilter$VignetteFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$VignetteFilter;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Landroid/graphics/ImageFilter$MosaicFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$MosaicFilter;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Landroid/graphics/ImageFilter$BlendingFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$BlendingFilter;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance v0, Landroid/graphics/ImageFilter$BlurFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$BlurFilter;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance v0, Landroid/graphics/ImageFilter$DropShadowFilter;

    invoke-direct {v0}, Landroid/graphics/ImageFilter$DropShadowFilter;-><init>()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x31 -> :sswitch_8
        0x32 -> :sswitch_9
        0x33 -> :sswitch_a
        0x34 -> :sswitch_b
        0x35 -> :sswitch_c
        0x36 -> :sswitch_d
        0x37 -> :sswitch_e
    .end sparse-switch
.end method

.method private static native finalizer(J)V
.end method

.method private getMd5FromStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .local v3, "md":Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .local v2, "hash":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .end local v0    # "bi":Ljava/math/BigInteger;
    .end local v2    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method private static native native_copy(J)J
.end method

.method private static native native_getType(J)I
.end method

.method private static native native_getValue(JI)F
.end method

.method private static native native_init(I)J
.end method

.method private static native native_setFragmentShader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native native_setSamplerBitmap(JLjava/lang/String;IJ)V
.end method

.method private static native native_setType(JI)V
.end method

.method private static native native_setUniformMatrix(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformf(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformi(JLjava/lang/String;II[I)V
.end method

.method private static native native_setUpdateMargin(JIIII)V
.end method

.method private static native native_setValue(JIF)V
.end method

.method private static native native_setVertexShader(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/ImageFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/graphics/ImageFilter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getType()I
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->native_getType(J)I

    move-result v0

    return v0
.end method

.method protected getValue(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_getValue(JI)F

    move-result v0

    return v0
.end method

.method protected setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-string v2, "filterSamplersStage1"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ)V

    goto :goto_0
.end method

.method protected setFragmentShader(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;->getMd5FromStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/ImageFilter;->native_setFragmentShader(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    if-eqz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ)V

    goto :goto_0
.end method

.method protected setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "value"    # [F

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformMatrix(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected setUniformf(Ljava/lang/String;II[F)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [F

    .prologue
    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformf(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected setUniformi(Ljava/lang/String;II[I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [I

    .prologue
    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformi(JLjava/lang/String;II[I)V

    :cond_0
    return-void
.end method

.method protected setUpdateMargin(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUpdateMargin(JIIII)V

    return-void
.end method

.method public setValue(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ImageFilter;->native_setValue(JIF)V

    return-void
.end method

.method protected setVertexShader(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;->getMd5FromStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/ImageFilter;->native_setVertexShader(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
