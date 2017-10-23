.class public Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StrokeRoundedBitmapDrawable.java"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6

.field protected static sStrokeWidth:I


# instance fields
.field private mApplyGravity:Z

.field protected mApplyStroke:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field protected mCornerRadius:F

.field final mDstRect:Landroid/graphics/Rect;

.field final mDstRectF:Landroid/graphics/RectF;

.field private mGravity:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mStrokeColor:I

.field protected mStrokePaint:Landroid/graphics/Paint;

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 320
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    .line 42
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    .line 50
    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    .line 59
    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    .line 323
    const v0, 0x106017e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokeColor:I

    .line 326
    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 327
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 328
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->computeBitmapSize()V

    .line 329
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 334
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 337
    if-eqz p1, :cond_1

    .line 338
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 341
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 342
    return-void

    .line 331
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    goto :goto_0
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    .line 79
    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .locals 1
    .param p0, "toCompare"    # F

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 232
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->updateDstRect()V

    .line 238
    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 239
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 240
    .local v2, "shader":Landroid/graphics/Shader;
    if-nez v2, :cond_2

    .line 241
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 242
    iget-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sget v5, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sget v6, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sget v7, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sget v8, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 248
    .local v3, "strokeRect":Landroid/graphics/RectF;
    iget v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    iget v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 249
    iget-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    if-eqz v4, :cond_0

    .line 250
    iget v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    iget v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    iget-object v6, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    .line 309
    iget v2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 313
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    invoke-static {v2}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "gravity"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 218
    return-void
.end method

.method public hasAntiAlias()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 258
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    .line 262
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    .line 189
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    .line 272
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    .prologue
    .line 282
    invoke-static {p1}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 287
    :goto_0
    iput p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    .line 288
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    .line 212
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    .line 206
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 145
    iput p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    .line 149
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setStroke(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    .line 350
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_2

    .line 117
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->computeBitmapSize()V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    .line 123
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setTargetDensity(I)V

    .line 93
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 104
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setTargetDensity(I)V

    .line 105
    return-void
.end method

.method updateDstRect()V
    .locals 6

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    if-eqz v0, :cond_0

    .line 222
    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    iget v2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    iget v3, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    .line 227
    :cond_0
    return-void
.end method
