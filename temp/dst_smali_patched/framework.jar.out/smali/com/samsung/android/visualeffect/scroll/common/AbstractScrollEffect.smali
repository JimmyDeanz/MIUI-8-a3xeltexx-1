.class public Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;
.super Landroid/view/View;
.source "AbstractScrollEffect.java"


# instance fields
.field private final ANIMATION_DELAY_TIME:J

.field protected final TAG:Ljava/lang/String;

.field private final WIDTH_SPEED:F

.field private final Y_SPEED:F

.field protected animationCurrentFrame:I

.field protected animationTotalFrame:I

.field protected currentListTextAlpha:I

.field protected currentTextShapeAlpha:I

.field protected currentWidthOffset:F

.field protected currentY:F

.field protected isDrawText:Z

.field protected isFrameMoving:Z

.field protected isLTR:Z

.field protected isLoop:Z

.field protected isOpen:Z

.field protected isWidthMoving:Z

.field protected isYMoving:Z

.field protected mHandler:Landroid/os/Handler;

.field protected scale:F

.field protected shapePaint:Landroid/graphics/Paint;

.field protected targetWidthOffset:F

.field protected targetY:F

.field protected textBounds:Landroid/graphics/Rect;

.field protected viewWidth:F

.field private yAniEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v4, "visualeffectScroll"

    iput-object v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->TAG:Ljava/lang/String;

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->Y_SPEED:F

    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->WIDTH_SPEED:F

    const-wide/16 v4, 0xa

    iput-wide v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->ANIMATION_DELAY_TIME:J

    iput v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentListTextAlpha:I

    iput v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentTextShapeAlpha:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->yAniEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLTR:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isOpen:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isYMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isDrawText:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isWidthMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->setIsLTR(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v1, "dpi":I
    int-to-float v2, v1

    const/high16 v4, 0x44200000    # 640.0f

    div-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->scale:F

    const-string v2, "visualeffectScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dpi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->scale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->shapePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->shapePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->setHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->yAniEnabled:Z

    return v0
.end method


# virtual methods
.method public clearEffect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "visualeffectScroll"

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isOpen:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isYMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isWidthMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->stopAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->invalidate()V

    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "visualeffectScroll"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isOpen:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isWidthMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->startAnimation()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : LayoutDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->clearEffect()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->setIsLTR(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->clearEffect()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected setHandler()V
    .locals 1

    .prologue
    new-instance v0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;-><init>(Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected setIsLTR(Z)V
    .locals 3
    .param p1, "isLTR"    # Z

    .prologue
    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsLTR : isLTR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLTR:Z

    return-void
.end method

.method public setLayout(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayout : l = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->layout(IIII)V

    return-void
.end method

.method protected startAnimation()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    return-void
.end method
