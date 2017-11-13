.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Gradient;,
        Landroid/graphics/Paint$MyanmarEncoding;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field private static final TAG:Ljava/lang/String; = "Paint"

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocale:Ljava/util/Locale;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

.field private mNativePaint:J

.field private mNativeShader:J

.field public mNativeTypeface:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUseCustomMyanmarEncoding:Z

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 84
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 87
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 90
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 467
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 476
    invoke-static {}, Landroid/graphics/Paint;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 477
    or-int/lit16 v0, p1, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 482
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 483
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 484
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_initWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 495
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 496
    return-void
.end method

.method private static native finalizer(J)V
.end method

.method private static native nativeGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nativeGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private native native_addInnerShadowTextEffect(FFFIF)I
.end method

.method private native native_addLinearGradientTextEffect(FF[I[F[FF)I
.end method

.method private native native_addOuterGlowTextEffect(FIF)I
.end method

.method private native native_addOuterShadowTextEffect(FFFIF)I
.end method

.method private native native_addStrokeTextEffect(FIF)I
.end method

.method private static native native_breakText(JJLjava/lang/String;ZFI[F)I
.end method

.method private static native native_breakText(JJ[CIIFI[F)I
.end method

.method private native native_clearAllTextEffect()V
.end method

.method private native native_clearTextEffectOpacity()V
.end method

.method private static native native_getFillPath(JJJ)Z
.end method

.method private static native native_getHyphenEdit(J)I
.end method

.method private static native native_getLetterSpacing(J)F
.end method

.method private static native native_getOffsetForAdvance(JJ[CIIIIZF)I
.end method

.method private static native native_getRunAdvance(JJ[CIIIIZI)F
.end method

.method private static native native_getStrokeCap(J)I
.end method

.method private static native native_getStrokeJoin(J)I
.end method

.method private static native native_getStyle(J)I
.end method

.method private static native native_getTextAlign(J)I
.end method

.method private native native_getTextEffectOffsetBottom()I
.end method

.method private native native_getTextEffectOffsetLeft()I
.end method

.method private native native_getTextEffectOffsetRight()I
.end method

.method private native native_getTextEffectOffsetTop()I
.end method

.method private static native native_getTextGlyphs(JLjava/lang/String;IIIII[C)I
.end method

.method private static native native_getTextPath(JJILjava/lang/String;IIFFJ)V
.end method

.method private static native native_getTextPath(JJI[CIIFFJ)V
.end method

.method private static native native_getTextRunAdvances(JJLjava/lang/String;IIIIZ[FI)F
.end method

.method private static native native_getTextRunAdvances(JJ[CIIIIZ[FI)F
.end method

.method private native native_getTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native native_getTextRunCursor(J[CIIIII)I
.end method

.method private static native native_getTextWidths(JJLjava/lang/String;III[F)I
.end method

.method private static native native_getTextWidths(JJ[CIII[F)I
.end method

.method private static native native_hasGlyph(JJILjava/lang/String;)Z
.end method

.method private static native native_hasShadowLayer(J)Z
.end method

.method private native native_hasTextEffect()Z
.end method

.method private static native native_init()J
.end method

.method private static native native_initWithPaint(J)J
.end method

.method private native native_measureText(Ljava/lang/String;I)F
.end method

.method private native native_measureText(Ljava/lang/String;III)F
.end method

.method private native native_measureText([CIII)F
.end method

.method private native native_removeTextEffect(I)V
.end method

.method private static native native_reset(J)V
.end method

.method private static native native_set(JJ)V
.end method

.method private static native native_setColorFilter(JJ)J
.end method

.method private static native native_setFontFeatureSettings(JLjava/lang/String;)V
.end method

.method private static native native_setHyphenEdit(JI)V
.end method

.method private static native native_setLetterSpacing(JF)V
.end method

.method private static native native_setMaskFilter(JJ)J
.end method

.method private static native native_setMyanmarEncoding(JI)V
.end method

.method private static native native_setPathEffect(JJ)J
.end method

.method private static native native_setRasterizer(JJ)J
.end method

.method private static native native_setShader(JJ)J
.end method

.method private static native native_setShadowLayer(JFFFI)V
.end method

.method private static native native_setStrokeCap(JI)V
.end method

.method private static native native_setStrokeJoin(JI)V
.end method

.method private static native native_setStyle(JI)V
.end method

.method private static native native_setTextAlign(JI)V
.end method

.method private native native_setTextEffectOpacity(F)V
.end method

.method private static native native_setTextLocale(JLjava/lang/String;)V
.end method

.method private static native native_setTypeface(JJ)J
.end method

.method private static native native_setXfermode(JJ)J
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 575
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 576
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 577
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 578
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 579
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 580
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 581
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 582
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 584
    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-boolean v0, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v0, :cond_0

    .line 586
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 590
    :cond_0
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 592
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 593
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 594
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 596
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 597
    iget-object v0, p1, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    .line 598
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 601
    iget-object v0, p1, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 602
    iget-boolean v0, p1, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 604
    return-void
.end method


# virtual methods
.method public addInnerShadowTextEffect(FFFIF)I
    .locals 1
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 1355
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Paint;->native_addInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 7
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "colors"    # [I
    .param p4, "alphas"    # [F
    .param p5, "positions"    # [F
    .param p6, "blendingOpacity"    # F

    .prologue
    const/4 v5, 0x0

    .line 1401
    if-eqz p3, :cond_0

    array-length v4, p3

    if-eqz v4, :cond_0

    if-eqz p4, :cond_0

    array-length v4, p4

    if-eqz v4, :cond_0

    if-eqz p5, :cond_0

    array-length v4, p5

    if-nez v4, :cond_2

    .line 1402
    :cond_0
    new-array p3, v5, [I

    .line 1403
    new-array p4, v5, [F

    .line 1404
    new-array p5, v5, [F

    .line 1436
    :cond_1
    invoke-direct/range {p0 .. p6}, Landroid/graphics/Paint;->native_addLinearGradientTextEffect(FF[I[F[FF)I

    move-result v4

    return v4

    .line 1406
    :cond_2
    array-length v4, p3

    array-length v5, p4

    array-length v6, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1408
    .local v3, "minLength":I
    new-array v1, v3, [Landroid/graphics/Paint$Gradient;

    .line 1410
    .local v1, "gradients":[Landroid/graphics/Paint$Gradient;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1411
    new-instance v0, Landroid/graphics/Paint$Gradient;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/graphics/Paint$Gradient;-><init>(Landroid/graphics/Paint$1;)V

    .line 1412
    .local v0, "gradient":Landroid/graphics/Paint$Gradient;
    aget v4, p3, v2

    iput v4, v0, Landroid/graphics/Paint$Gradient;->color:I

    .line 1413
    aget v4, p4, v2

    iput v4, v0, Landroid/graphics/Paint$Gradient;->alpha:F

    .line 1414
    aget v4, p5, v2

    iput v4, v0, Landroid/graphics/Paint$Gradient;->position:F

    .line 1415
    aput-object v0, v1, v2

    .line 1410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1418
    .end local v0    # "gradient":Landroid/graphics/Paint$Gradient;
    :cond_3
    new-instance v4, Landroid/graphics/Paint$1;

    invoke-direct {v4, p0}, Landroid/graphics/Paint$1;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1425
    new-array p3, v3, [I

    .line 1426
    new-array p4, v3, [F

    .line 1427
    new-array p5, v3, [F

    .line 1429
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1430
    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/Paint$Gradient;->color:I

    aput v4, p3, v2

    .line 1431
    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/Paint$Gradient;->alpha:F

    aput v4, p4, v2

    .line 1432
    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/Paint$Gradient;->position:F

    aput v4, p5, v2

    .line 1429
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public addOuterGlowTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 1384
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_addOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addOuterShadowTextEffect(FFFIF)I
    .locals 1
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 1339
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Paint;->native_addOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addStrokeTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 1370
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_addStrokeTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public native ascent()F
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    .prologue
    const/4 v2, 0x0

    .line 2081
    if-nez p1, :cond_0

    .line 2082
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :cond_0
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 2085
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2088
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_3

    :cond_2
    move v6, v2

    .line 2108
    .end local p1    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v6

    .line 2091
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_3
    if-nez p2, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 2092
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    goto :goto_0

    .line 2096
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2099
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2101
    if-eqz p4, :cond_5

    .line 2102
    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .line 2107
    .local v6, "result":I
    :goto_1
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0

    .line 2104
    .end local v6    # "result":I
    :cond_5
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .restart local v6    # "result":I
    goto :goto_1
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    .prologue
    .line 2129
    if-nez p1, :cond_0

    .line 2130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 2134
    const/4 v10, 0x0

    .line 2147
    :cond_1
    :goto_0
    return v10

    .line 2136
    :cond_2
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_3

    .line 2137
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->native_breakText(JJLjava/lang/String;ZFI[F)I

    move-result v10

    goto :goto_0

    .line 2141
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    .line 2142
    .local v9, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v9

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2143
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p3, v4

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->native_breakText(JJLjava/lang/String;ZFI[F)I

    move-result v10

    .line 2145
    .local v10, "res":I
    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2146
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0

    goto :goto_0
.end method

.method public breakText([CIIF[F)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    .prologue
    .line 2034
    if-nez p1, :cond_0

    .line 2035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2037
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2038
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2041
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_5

    .line 2042
    :cond_3
    const/4 v11, 0x0

    .line 2055
    :cond_4
    :goto_0
    return v11

    .line 2044
    :cond_5
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_6

    .line 2045
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->native_breakText(JJ[CIIFI[F)I

    move-result v11

    goto :goto_0

    .line 2049
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 2050
    .local v10, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v10

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2051
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p4, v4

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->native_breakText(JJ[CIIFI[F)I

    move-result v11

    .line 2053
    .local v11, "res":I
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2054
    if-eqz p5, :cond_4

    const/4 v0, 0x0

    aget v1, p5, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p5, v0

    goto :goto_0
.end method

.method public clearAllTextEffect()V
    .locals 0

    .prologue
    .line 1475
    invoke-direct {p0}, Landroid/graphics/Paint;->native_clearAllTextEffect()V

    .line 1476
    return-void
.end method

.method public clearShadowLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1241
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1242
    return-void
.end method

.method public clearTextEffectOpacity()V
    .locals 0

    .prologue
    .line 1467
    invoke-direct {p0}, Landroid/graphics/Paint;->native_clearTextEffectOpacity()V

    .line 1468
    return-void
.end method

.method public native descent()F
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2863
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2865
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2867
    return-void

    .line 2865
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getAlpha()I
.end method

.method public getBidiFlags()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public native getColor()I
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    .prologue
    .line 1002
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_getFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public native getFlags()I
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public native getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .prologue
    .line 1823
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1824
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 1825
    return-object v0
.end method

.method public native getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .prologue
    .line 1859
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1860
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1861
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    .prologue
    .line 1872
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getHCTStrokeWidth()F
    .locals 3

    .prologue
    .line 2856
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    const v1, 0x3d23d70a    # 0.04f

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public native getHinting()I
.end method

.method public getHyphenEdit()I
    .locals 2

    .prologue
    .line 1743
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_getHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    .prologue
    .line 1649
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_getLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 6

    .prologue
    .line 625
    iget-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 626
    .local v0, "newNativeShader":J
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 627
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 628
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Paint;->native_setShader(JJ)J

    .line 630
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    return-wide v2

    .line 625
    .end local v0    # "newNativeShader":J
    :cond_1
    iget-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .prologue
    .line 2833
    if-nez p1, :cond_0

    .line 2834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2836
    :cond_0
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v2, p2, p4

    or-int/2addr v0, v2

    sub-int v2, p3, p2

    or-int/2addr v0, v2

    sub-int v2, p5, p3

    or-int/2addr v0, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    or-int/2addr v0, v2

    if-gez v0, :cond_1

    .line 2839
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2842
    :cond_1
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2843
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2844
    sub-int v2, p2, p4

    sub-int v3, p3, p4

    const/4 v4, 0x0

    sub-int v5, p5, p4

    move-object v0, p0

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v0

    add-int v8, v0, p4

    .line 2846
    .local v8, "result":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2847
    return v8
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .prologue
    .line 2806
    if-nez p1, :cond_0

    .line 2807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2809
    :cond_0
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 2812
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2815
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->native_getOffsetForAdvance(JJ[CIIIIZF)I

    move-result v0

    return v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .prologue
    .line 2756
    if-nez p1, :cond_0

    .line 2757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2759
    :cond_0
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v2, p2, p4

    or-int/2addr v0, v2

    sub-int v2, p7, p2

    or-int/2addr v0, v2

    sub-int v2, p3, p7

    or-int/2addr v0, v2

    sub-int v2, p5, p3

    or-int/2addr v0, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    or-int/2addr v0, v2

    if-gez v0, :cond_1

    .line 2762
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2764
    :cond_1
    if-ne p3, p2, :cond_2

    .line 2765
    const/4 v8, 0x0

    .line 2773
    :goto_0
    return v8

    .line 2768
    :cond_2
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2769
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2770
    sub-int v2, p2, p4

    sub-int v3, p3, p4

    const/4 v4, 0x0

    sub-int v5, p5, p4

    sub-int v7, p7, p4

    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v8

    .line 2772
    .local v8, "result":F
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getRunAdvance([CIIIIZI)F
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .prologue
    .line 2726
    if-nez p1, :cond_0

    .line 2727
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2729
    :cond_0
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p7, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p7

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 2732
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2734
    :cond_1
    if-ne p3, p2, :cond_2

    .line 2735
    const/4 v0, 0x0

    .line 2738
    :goto_0
    return v0

    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->native_getRunAdvance(JJ[CIIIIZI)F

    move-result v0

    goto :goto_0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 4

    .prologue
    .line 958
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 4

    .prologue
    .line 977
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public native getStrokeMiter()F
.end method

.method public native getStrokeWidth()F
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 4

    .prologue
    .line 846
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 4

    .prologue
    .line 1503
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2638
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2639
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2641
    :cond_0
    if-nez p4, :cond_1

    .line 2642
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2644
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nativeGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 2645
    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2658
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2659
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2661
    :cond_1
    if-nez p4, :cond_2

    .line 2662
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2664
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nativeGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V

    .line 2666
    return-void
.end method

.method public getTextEffectOffsetBottom()I
    .locals 1

    .prologue
    .line 1322
    invoke-direct {p0}, Landroid/graphics/Paint;->native_getTextEffectOffsetBottom()I

    move-result v0

    return v0
.end method

.method public getTextEffectOffsetLeft()I
    .locals 1

    .prologue
    .line 1292
    invoke-direct {p0}, Landroid/graphics/Paint;->native_getTextEffectOffsetLeft()I

    move-result v0

    return v0
.end method

.method public getTextEffectOffsetRight()I
    .locals 1

    .prologue
    .line 1302
    invoke-direct {p0}, Landroid/graphics/Paint;->native_getTextEffectOffsetRight()I

    move-result v0

    return v0
.end method

.method public getTextEffectOffsetTop()I
    .locals 1

    .prologue
    .line 1312
    invoke-direct {p0}, Landroid/graphics/Paint;->native_getTextEffectOffsetTop()I

    move-result v0

    return v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .prologue
    .line 2620
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2621
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2623
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->ni()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->native_getTextPath(JJILjava/lang/String;IIFFJ)V

    .line 2625
    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .prologue
    .line 2598
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2599
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2601
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->ni()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->native_getTextPath(JJI[CIIFFJ)V

    .line 2603
    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .prologue
    .line 2341
    if-nez p1, :cond_0

    .line 2342
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2344
    :cond_0
    or-int v1, p2, p3

    or-int/2addr v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v3, p3, p2

    or-int/2addr v1, v3

    sub-int v3, p2, p4

    or-int/2addr v1, v3

    sub-int v3, p5, p3

    or-int/2addr v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v1

    if-nez p7, :cond_1

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v3

    if-gez v1, :cond_2

    .line 2349
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2344
    :cond_1
    move-object/from16 v0, p7

    array-length v1, v0

    sub-int v1, v1, p8

    sub-int v5, p3, p2

    sub-int/2addr v1, v5

    goto :goto_0

    .line 2352
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v2, p1

    .line 2353
    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v10

    .line 2376
    :goto_1
    return v10

    .line 2356
    :cond_3
    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_4

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_5

    .line 2358
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v10

    goto :goto_1

    .line 2361
    :cond_5
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 2362
    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    invoke-interface/range {v1 .. v9}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F

    move-result v10

    goto :goto_1

    .line 2365
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_7

    if-ne p3, p2, :cond_8

    .line 2366
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 2369
    :cond_8
    sub-int v6, p5, p4

    .line 2370
    .local v6, "contextLen":I
    sub-int v4, p3, p2

    .line 2371
    .local v4, "len":I
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2372
    .local v2, "buf":[C
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2373
    sub-int v3, p2, p4

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v10

    .line 2375
    .local v10, "result":F
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .prologue
    .line 2423
    if-nez p1, :cond_0

    .line 2424
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2426
    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v2

    if-nez p7, :cond_1

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 2431
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2426
    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_0

    .line 2434
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 2435
    :cond_3
    const/4 v2, 0x0

    .line 2454
    :goto_1
    return v2

    .line 2438
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 2439
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJLjava/lang/String;IIIIZ[FI)F

    move-result v2

    goto :goto_1

    .line 2443
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    .line 2444
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2445
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJLjava/lang/String;IIIIZ[FI)F

    move-result v17

    .line 2447
    .local v17, "totalAdvance":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2449
    if-eqz p7, :cond_6

    .line 2450
    move/from16 v15, p8

    .local v15, "i":I
    sub-int v2, p3, p2

    add-int v14, v15, v2

    .local v14, "e":I
    :goto_2
    if-ge v15, v14, :cond_6

    .line 2451
    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    .line 2450
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2454
    .end local v14    # "e":I
    .end local v15    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    goto :goto_1
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .locals 18
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .prologue
    .line 2296
    if-nez p1, :cond_0

    .line 2297
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2299
    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, p4, p5

    sub-int/2addr v3, v4

    or-int/2addr v3, v2

    if-nez p7, :cond_1

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 2305
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2299
    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    add-int v4, p8, p3

    sub-int/2addr v2, v4

    goto :goto_0

    .line 2308
    :cond_2
    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    .line 2309
    :cond_3
    const/4 v2, 0x0

    .line 2327
    :goto_1
    return v2

    .line 2311
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 2312
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJ[CIIIIZ[FI)F

    move-result v2

    goto :goto_1

    .line 2316
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    .line 2317
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2318
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJ[CIIIIZ[FI)F

    move-result v17

    .line 2320
    .local v17, "res":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2322
    if-eqz p7, :cond_6

    .line 2323
    move/from16 v15, p8

    .local v15, "i":I
    add-int v14, v15, p3

    .local v14, "e":I
    :goto_2
    if-ge v15, v14, :cond_6

    .line 2324
    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    .line 2323
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2327
    .end local v14    # "e":I
    .end local v15    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    goto :goto_1
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 2526
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 2528
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v0

    .line 2541
    :goto_0
    return v0

    .line 2531
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2532
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v0

    goto :goto_0

    .line 2536
    :cond_2
    sub-int v3, p3, p2

    .line 2537
    .local v3, "contextLen":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2538
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2539
    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 2540
    .local v7, "relPos":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2541
    if-ne v7, v8, :cond_3

    move v0, v8

    goto :goto_0

    :cond_3
    add-int v0, v7, p2

    goto :goto_0
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .prologue
    .line 2572
    or-int v2, p2, p3

    or-int v2, v2, p5

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p5, p2

    or-int/2addr v2, v3

    sub-int v3, p3, p5

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    or-int v2, v2, p6

    if-ltz v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p6

    if-le v0, v2, :cond_1

    .line 2576
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2579
    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->native_getTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v2

    return v2
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .prologue
    .line 2485
    add-int v2, p2, p3

    .line 2486
    .local v2, "contextEnd":I
    or-int v3, p2, v2

    or-int v3, v3, p5

    sub-int v4, v2, p2

    or-int/2addr v3, v4

    sub-int v4, p5, p2

    or-int/2addr v3, v4

    sub-int v4, v2, p5

    or-int/2addr v3, v4

    array-length v4, p1

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    or-int v3, v3, p6

    if-ltz v3, :cond_0

    const/4 v3, 0x4

    move/from16 v0, p6

    if-le v0, v3, :cond_1

    .line 2490
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2493
    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->native_getTextRunCursor(J[CIIIII)I

    move-result v3

    return v3
.end method

.method public native getTextScaleX()F
.end method

.method public native getTextSize()F
.end method

.method public native getTextSkewX()F
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    const/4 v1, 0x0

    .line 2203
    if-nez p1, :cond_0

    .line 2204
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2206
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 2207
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2209
    :cond_1
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_2

    .line 2210
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2213
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne p2, p3, :cond_4

    .line 2232
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_3
    :goto_0
    return v1

    .line 2216
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2217
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 2219
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_6

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_7

    .line 2221
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 2223
    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_8

    .line 2224
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_0

    .line 2228
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_8
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2229
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2230
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 2231
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    .line 2246
    if-nez p1, :cond_0

    .line 2247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2249
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 2250
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2252
    :cond_1
    sub-int v2, p3, p2

    move-object/from16 v0, p4

    array-length v3, v0

    if-le v2, v3, :cond_2

    .line 2253
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2256
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 2257
    :cond_3
    const/4 v13, 0x0

    .line 2270
    :cond_4
    :goto_0
    return v13

    .line 2259
    :cond_5
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    .line 2260
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJLjava/lang/String;III[F)I

    move-result v13

    goto :goto_0

    .line 2263
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 2264
    .local v12, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v12

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2265
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJLjava/lang/String;III[F)I

    move-result v13

    .line 2266
    .local v13, "res":I
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2267
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_4

    .line 2268
    aget v2, p4, v11

    iget v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v11

    .line 2267
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    .prologue
    .line 2282
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    .prologue
    .line 2166
    if-nez p1, :cond_0

    .line 2167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2169
    :cond_0
    or-int v2, p2, p3

    if-ltz v2, :cond_1

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_1

    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, p3

    if-le v0, v2, :cond_2

    .line 2171
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2174
    :cond_2
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p3, :cond_5

    .line 2175
    :cond_3
    const/4 v13, 0x0

    .line 2188
    :cond_4
    :goto_0
    return v13

    .line 2177
    :cond_5
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    .line 2178
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJ[CIII[F)I

    move-result v13

    goto :goto_0

    .line 2181
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 2182
    .local v12, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v12

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2183
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJ[CIII[F)I

    move-result v13

    .line 2184
    .local v13, "res":I
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2185
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_4

    .line 2186
    aget v2, p4, v11

    iget v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v11

    .line 2185
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2685
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_hasGlyph(JJILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasShadowLayer()Z
    .locals 2

    .prologue
    .line 1251
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_hasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public hasTextEffect()Z
    .locals 1

    .prologue
    .line 1282
    invoke-direct {p0}, Landroid/graphics/Paint;->native_hasTextEffect()Z

    move-result v0

    return v0
.end method

.method public final isAntiAlias()Z
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDither()Z
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isElegantTextHeight()Z
.end method

.method public final isFakeBoldText()Z
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFilterBitmap()Z
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLinearText()Z
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStrikeThruText()Z
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubpixelText()Z
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUnderlineText()Z
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 1989
    if-nez p1, :cond_0

    .line 1990
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1992
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1993
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1996
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1997
    :cond_2
    const/4 v1, 0x0

    .line 2014
    .end local p1    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v1

    .line 1999
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2000
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 2002
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_5

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_6

    .line 2004
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 2006
    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_7

    .line 2007
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v1

    goto :goto_0

    .line 2010
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_7
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2011
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2012
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 2013
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1956
    if-nez p1, :cond_0

    .line 1957
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1960
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1961
    const/4 v2, 0x0

    .line 1975
    :goto_0
    return v2

    .line 1965
    :cond_1
    invoke-virtual {p0, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1968
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_2

    .line 1969
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    .line 1971
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1972
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1973
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    move-result v1

    .line 1974
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1975
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1921
    if-nez p1, :cond_0

    .line 1922
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1924
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1925
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1928
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1929
    :cond_2
    const/4 v2, 0x0

    .line 1944
    :goto_0
    return v2

    .line 1933
    :cond_3
    invoke-virtual {p0, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1936
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_4

    .line 1937
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    .line 1940
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1941
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1942
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    move-result v1

    .line 1943
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1944
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method public measureText([CII)F
    .locals 4
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    .prologue
    .line 1884
    if-nez p1, :cond_0

    .line 1885
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1887
    :cond_0
    or-int v2, p2, p3

    if-ltz v2, :cond_1

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 1888
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1891
    :cond_2
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    .line 1892
    :cond_3
    const/4 v2, 0x0

    .line 1907
    :goto_0
    return v2

    .line 1896
    :cond_4
    invoke-virtual {p0, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1899
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 1900
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText([CIII)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    .line 1903
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1904
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1905
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText([CIII)F

    move-result v1

    .line 1906
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1907
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method public removeTextEffect(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1447
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_removeTextEffect(I)V

    .line 1448
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 500
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_reset(J)V

    .line 504
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 511
    iput-object v2, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 512
    iput-object v2, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 513
    iput-object v2, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 514
    iput-object v2, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 515
    iput-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 516
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 517
    iput-object v2, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 518
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 519
    iput-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 521
    iput-boolean v4, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 522
    iput v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 523
    iput v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 525
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 526
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 527
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    .line 528
    iput-object v2, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 529
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 530
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "src"    # Landroid/graphics/Paint;

    .prologue
    const-wide/16 v4, 0x0

    .line 541
    if-eq p0, p1, :cond_0

    .line 543
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->native_set(JJ)V

    .line 544
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 549
    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-boolean v0, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_4

    .line 551
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 557
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    .line 558
    :cond_2
    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_5

    .line 559
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 564
    :cond_3
    :goto_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->native_setTypeface(JJ)J

    .line 568
    return-void

    .line 553
    :cond_4
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    goto :goto_0

    .line 561
    :cond_5
    iput-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    goto :goto_1
.end method

.method public setARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 908
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 909
    return-void
.end method

.method public native setAlpha(I)V
.end method

.method public native setAntiAlias(Z)V
.end method

.method public setBidiFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 649
    and-int/lit8 p1, p1, 0x7

    .line 650
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 654
    return-void
.end method

.method public native setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 4
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1045
    const-wide/16 v0, 0x0

    .line 1046
    .local v0, "filterNative":J
    if-eqz p1, :cond_0

    .line 1047
    iget-wide v0, p1, Landroid/graphics/ColorFilter;->native_instance:J

    .line 1048
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setColorFilter(JJ)J

    .line 1049
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1050
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5
    .param p1, "factor"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 608
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 610
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 616
    :goto_0
    return-void

    .line 612
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 613
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 614
    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_0
.end method

.method public native setDither(Z)V
.end method

.method public native setElegantTextHeight(Z)V
.end method

.method public native setFakeBoldText(Z)V
.end method

.method public native setFilterBitmap(Z)V
.end method

.method public native setFlags(I)V
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;

    .prologue
    .line 1681
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const/4 p1, 0x0

    .line 1684
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1690
    :cond_2
    :goto_0
    return-void

    .line 1688
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1689
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->native_setFontFeatureSettings(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public native setHinting(I)V
.end method

.method public setHyphenEdit(I)V
    .locals 2
    .param p1, "hyphen"    # I

    .prologue
    .line 1755
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->native_setHyphenEdit(JI)V

    .line 1756
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    .prologue
    .line 1660
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->native_setLetterSpacing(JF)V

    .line 1661
    return-void
.end method

.method public native setLinearText(Z)V
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    .prologue
    .line 1128
    const-wide/16 v0, 0x0

    .line 1129
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_0

    .line 1130
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 1132
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setMaskFilter(JJ)J

    .line 1133
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1134
    return-object p1
.end method

.method public setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V
    .locals 3
    .param p1, "myanmarEncoding"    # Landroid/graphics/Paint$MyanmarEncoding;

    .prologue
    .line 1709
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 1710
    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v0, p1, :cond_0

    .line 1711
    iput-object p1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1712
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setMyanmarEncoding(JI)V

    .line 1714
    :cond_0
    return-void
.end method

.method public setMyanmarEncoding(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1722
    iget-boolean v1, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1723
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1724
    .local v0, "myanmarEncoding":Landroid/graphics/Paint$MyanmarEncoding;
    const-string v1, "ZG"

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1725
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1727
    :cond_0
    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v0, :cond_1

    .line 1728
    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1729
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v1, v0, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Paint;->native_setMyanmarEncoding(JI)V

    .line 1732
    .end local v0    # "myanmarEncoding":Landroid/graphics/Paint$MyanmarEncoding;
    :cond_1
    return-void
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    .prologue
    .line 1099
    const-wide/16 v0, 0x0

    .line 1100
    .local v0, "effectNative":J
    if-eqz p1, :cond_0

    .line 1101
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 1103
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setPathEffect(JJ)J

    .line 1104
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1105
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 4
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1212
    const-wide/16 v0, 0x0

    .line 1213
    .local v0, "rasterizerNative":J
    if-eqz p1, :cond_0

    .line 1214
    iget-wide v0, p1, Landroid/graphics/Rasterizer;->native_instance:J

    .line 1216
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setRasterizer(JJ)J

    .line 1217
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 1218
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 0
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 1025
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1026
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    .prologue
    .line 1234
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_setShadowLayer(JFFFI)V

    .line 1235
    return-void
.end method

.method public native setStrikeThruText(Z)V
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 968
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setStrokeCap(JI)V

    .line 969
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    .prologue
    .line 987
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setStrokeJoin(JI)V

    .line 988
    return-void
.end method

.method public native setStrokeMiter(F)V
.end method

.method public native setStrokeWidth(F)V
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 857
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setStyle(JI)V

    .line 858
    return-void
.end method

.method public native setSubpixelText(Z)V
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 1515
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setTextAlign(JI)V

    .line 1516
    return-void
.end method

.method public setTextEffectOpacity(F)V
    .locals 0
    .param p1, "blendingOpacity"    # F

    .prologue
    .line 1459
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_setTextEffectOpacity(F)V

    .line 1460
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1554
    if-nez p1, :cond_0

    .line 1555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v0, :cond_1

    .line 1560
    const-string v0, "ZG"

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1561
    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v0, v1, :cond_1

    .line 1562
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1563
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iget v2, v2, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setMyanmarEncoding(JI)V

    .line 1574
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1577
    :goto_1
    return-void

    .line 1566
    :cond_2
    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v0, v1, :cond_1

    .line 1567
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1568
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iget v2, v2, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setMyanmarEncoding(JI)V

    goto :goto_0

    .line 1575
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    .line 1576
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setTextLocale(JLjava/lang/String;)V

    goto :goto_1
.end method

.method public native setTextScaleX(F)V
.end method

.method public native setTextSize(F)V
.end method

.method public native setTextSkewX(F)V
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 1162
    const-wide/16 v0, 0x0

    .line 1163
    .local v0, "typefaceNative":J
    if-eqz p1, :cond_0

    .line 1165
    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v2, :cond_2

    .line 1166
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v2, Landroid/graphics/Typeface;->native_instance:J

    .line 1173
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_1

    .line 1174
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v2, Landroid/graphics/Typeface;->native_instance:J

    .line 1178
    :cond_1
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setTypeface(JJ)J

    .line 1179
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1180
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1181
    return-object p1

    .line 1169
    :cond_2
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_0
.end method

.method public native setUnderlineText(Z)V
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 1072
    const-wide/16 v0, 0x0

    .line 1073
    .local v0, "xfermodeNative":J
    if-eqz p1, :cond_0

    .line 1074
    iget-wide v0, p1, Landroid/graphics/Xfermode;->native_instance:J

    .line 1075
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setXfermode(JJ)J

    .line 1076
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1077
    return-object p1
.end method
