.class public Lcom/android/phone/common/dialpad/DialpadTextView;
.super Landroid/widget/TextView;
.source "DialpadTextView.java"


# instance fields
.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 50
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 68
    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/phone/common/dialpad/DialpadTextView;->resolveSize(II)I

    move-result v1

    .line 69
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/phone/common/dialpad/DialpadTextView;->resolveSize(II)I

    move-result v0

    .line 70
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/common/dialpad/DialpadTextView;->setMeasuredDimension(II)V

    .line 71
    return-void
.end method
