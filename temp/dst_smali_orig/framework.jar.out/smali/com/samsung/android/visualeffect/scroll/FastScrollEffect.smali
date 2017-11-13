.class public Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;
.super Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;
.source "FastScrollEffect.java"


# instance fields
.field private circleRadius:F

.field private listText:Ljava/lang/String;

.field private listTextCharSequence:Ljava/lang/CharSequence;

.field private listTextPaint:Landroid/text/TextPaint;

.field private listTextSize:F

.field private maxRoundRectWidth:F

.field private minRoundRectWidth:F

.field private paintColor:I

.field private roundRectWidth:F

.field private scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

.field private textColor:I

.field private textShapeMargin:F

.field private textShapePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42880000    # 68.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    const/high16 v0, 0x444c0000    # 816.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    const/high16 v0, 0x44960000    # 1200.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    const v0, -0x50506

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textColor:I

    const v0, -0x3301abbb

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->paintColor:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listText:Ljava/lang/String;

    const-string v0, "visualeffectScroll"

    const-string v1, "ListScrollEffect : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    invoke-direct {v0, v1}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationTotalFrame:I

    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animationTotalFrame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationTotalFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->shapePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->paintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->paintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private drawLastFrameCircle(Landroid/graphics/Canvas;F)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widthOffset"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .local v1, "left":F
    const/4 v3, 0x0

    .local v3, "right":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    div-float/2addr v5, v6

    sub-float v1, v0, v5

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    div-float/2addr v5, v6

    add-float v3, v0, v5

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    mul-float/2addr v5, v6

    sub-float v8, v0, v5

    .local v8, "avail":F
    cmpl-float v0, p2, v8

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v8, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    .end local v8    # "avail":F
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    sub-float v2, v0, v5

    .local v2, "top":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    add-float v4, v0, v5

    .local v4, "bottom":F
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentTextShapeAlpha:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    iget v6, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    iget-object v7, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    .end local v2    # "top":F
    .end local v4    # "bottom":F
    :cond_1
    cmpl-float v0, p2, v5

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    mul-float/2addr v0, v6

    add-float v9, p2, v0

    .local v9, "tempWidth":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    sub-float/2addr v0, v5

    div-float v1, v0, v6

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    add-float/2addr v0, v5

    div-float v3, v0, v6

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    cmpl-float v0, v9, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    sub-float/2addr v0, v5

    div-float v1, v0, v6

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    add-float/2addr v0, v5

    div-float v3, v0, v6

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    mul-float/2addr v5, v6

    sub-float v8, v0, v5

    .restart local v8    # "avail":F
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v8, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v8    # "avail":F
    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    div-float v5, p2, v6

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    sub-float v1, v0, v5

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    div-float v5, p2, v6

    add-float/2addr v0, v5

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    add-float v3, v0, v5

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->onDraw(Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationCurrentFrame:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationCurrentFrame:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v2

    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isLTR:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isDrawText:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentWidthOffset:F

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->drawLastFrameCircle(Landroid/graphics/Canvas;F)V

    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float v0, v3, v6

    .local v0, "bX":F
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float v1, v3, v4

    .local v1, "bY":F
    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentListTextAlpha:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .end local v0    # "bX":F
    .end local v1    # "bY":F
    :cond_2
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method public open(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    return-void
.end method

.method public open(FLjava/lang/String;)V
    .locals 5
    .param p1, "y"    # F
    .param p2, "listText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "visualeffectScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open : y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  listText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetY:F

    if-eqz p2, :cond_3

    const-string v0, ""

    if-eq p2, v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isDrawText:Z

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isDrawText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listText:Ljava/lang/String;

    if-eq v0, p2, :cond_0

    iput-object p2, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetWidthOffset:F

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isOpen:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetWidthOffset:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentWidthOffset:F

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isOpen:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isYMoving:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isWidthMoving:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isFrameMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationCurrentFrame:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->startAnimation()V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setListTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setListTextSize(F)V
    .locals 3
    .param p1, "textSize"    # F

    .prologue
    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setRoundRectWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRoundRectWidth : width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    return-void
.end method
