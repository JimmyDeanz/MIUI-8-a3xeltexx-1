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

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    const/16 v0, 0x77

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    const v0, 0x106017e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokeColor:I

    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->computeBitmapSize()V

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->sStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    goto :goto_0
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .locals 1
    .param p0, "toCompare"    # F

    .prologue
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
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->updateDstRect()V

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .local v2, "shader":Landroid/graphics/Shader;
    if-nez v2, :cond_2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

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

    .local v3, "strokeRect":Landroid/graphics/RectF;
    iget v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    iget v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    iget v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    iget-object v6, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    iget v2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

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
    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public hasAntiAlias()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    .prologue
    invoke-static {p1}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    iput p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mCornerRadius:F

    return-void

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
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setStroke(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyStroke:Z

    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mTargetDensity:I

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->computeBitmapSize()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setTargetDensity(I)V

    return-void
.end method

.method updateDstRect()V
    .locals 6

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mGravity:I

    iget v2, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapWidth:I

    iget v3, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mBitmapHeight:I

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->mApplyGravity:Z

    :cond_0
    return-void
.end method
