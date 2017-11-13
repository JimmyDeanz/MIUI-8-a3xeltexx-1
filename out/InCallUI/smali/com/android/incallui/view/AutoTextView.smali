.class public Lcom/android/incallui/view/AutoTextView;
.super Landroid/widget/TextView;
.source "AutoTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;
    }
.end annotation


# instance fields
.field private DEFAULT_MAX_TEXT_SIZE:F

.field private DEFAULT_MIN_TEXT_SIZE:F

.field private MAX_TEXT_SIZE:F

.field private MIN_TEXT_SIZE:F

.field private listener:Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;

.field private maxTextSize:F

.field private minTextSize:F

.field private oldWidth:I

.field private parentView:Landroid/view/View;

.field private resizeSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/high16 v2, 0x41b80000    # 23.0f

    iput v2, p0, Lcom/android/incallui/view/AutoTextView;->MIN_TEXT_SIZE:F

    .line 18
    const/high16 v2, 0x42200000    # 40.0f

    iput v2, p0, Lcom/android/incallui/view/AutoTextView;->MAX_TEXT_SIZE:F

    .line 24
    iput v4, p0, Lcom/android/incallui/view/AutoTextView;->oldWidth:I

    .line 25
    iput-boolean v5, p0, Lcom/android/incallui/view/AutoTextView;->resizeSwitch:Z

    .line 29
    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/R$styleable;->AutoTextView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 32
    .local v1, "density":F
    iget v2, p0, Lcom/android/incallui/view/AutoTextView;->MIN_TEXT_SIZE:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/android/incallui/view/AutoTextView;->DEFAULT_MIN_TEXT_SIZE:F

    .line 34
    iget v2, p0, Lcom/android/incallui/view/AutoTextView;->MAX_TEXT_SIZE:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/android/incallui/view/AutoTextView;->DEFAULT_MAX_TEXT_SIZE:F

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-direct {p0}, Lcom/android/incallui/view/AutoTextView;->initialise()V

    .line 38
    return-void
.end method

.method private initialise()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    .line 60
    iget v0, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    iget v1, p0, Lcom/android/incallui/view/AutoTextView;->DEFAULT_MIN_TEXT_SIZE:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 61
    iget v0, p0, Lcom/android/incallui/view/AutoTextView;->DEFAULT_MAX_TEXT_SIZE:F

    iput v0, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    .line 63
    :cond_0
    iget v0, p0, Lcom/android/incallui/view/AutoTextView;->DEFAULT_MIN_TEXT_SIZE:F

    iput v0, p0, Lcom/android/incallui/view/AutoTextView;->minTextSize:F

    .line 64
    return-void
.end method

.method private resize(Ljava/lang/String;II)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textWidth"    # I
    .param p3, "preWidth"    # I

    .prologue
    const/4 v6, 0x0

    .line 72
    iget-object v4, p0, Lcom/android/incallui/view/AutoTextView;->listener:Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;

    if-eqz v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/android/incallui/view/AutoTextView;->listener:Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;

    iget-object v5, p0, Lcom/android/incallui/view/AutoTextView;->parentView:Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;->isOk(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v2, 0x0

    .line 79
    .local v2, "isUpdate":Z
    if-lez p2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getPaddingLeft()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    .line 82
    .local v0, "availableWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getTextSize()F

    move-result v3

    .line 83
    .local v3, "preSize":F
    iget v1, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    .line 84
    .local v1, "curSize":F
    invoke-virtual {p0, v6, v1}, Lcom/android/incallui/view/AutoTextView;->setTextSize(IF)V

    .line 85
    iget v4, p0, Lcom/android/incallui/view/AutoTextView;->minTextSize:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 88
    if-ge p3, p2, :cond_2

    .line 89
    iget v1, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    .line 93
    :goto_1
    invoke-virtual {p0, v6, v1}, Lcom/android/incallui/view/AutoTextView;->setTextSize(IF)V

    .line 95
    :goto_2
    iget v4, p0, Lcom/android/incallui/view/AutoTextView;->minTextSize:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 96
    const/4 v2, 0x1

    .line 97
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    .line 98
    invoke-virtual {p0, v6, v1}, Lcom/android/incallui/view/AutoTextView;->setTextSize(IF)V

    goto :goto_2

    .line 91
    :cond_2
    move v1, v3

    goto :goto_1

    .line 101
    :cond_3
    if-eqz v2, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/incallui/view/AutoTextView;->listener:Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/android/incallui/view/AutoTextView;->listener:Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;

    iget-object v5, p0, Lcom/android/incallui/view/AutoTextView;->parentView:Landroid/view/View;

    invoke-interface {v4, v5, p1}, Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;->isChange(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 113
    .local v0, "width":I
    iget v1, p0, Lcom/android/incallui/view/AutoTextView;->oldWidth:I

    if-nez v1, :cond_0

    .line 114
    iput v0, p0, Lcom/android/incallui/view/AutoTextView;->oldWidth:I

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 117
    iget-boolean v1, p0, Lcom/android/incallui/view/AutoTextView;->resizeSwitch:Z

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/view/AutoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/view/AutoTextView;->oldWidth:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/incallui/view/AutoTextView;->resize(Ljava/lang/String;II)V

    .line 120
    :cond_1
    return-void
.end method

.method public resizeMaxTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    .line 51
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/incallui/view/AutoTextView;->maxTextSize:F

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/view/AutoTextView;->setTextSize(IF)V

    .line 52
    return-void
.end method

.method public setChangeLayoutListener(Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;Landroid/view/View;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/incallui/view/AutoTextView;->listener:Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;

    .line 46
    iput-object p2, p0, Lcom/android/incallui/view/AutoTextView;->parentView:Landroid/view/View;

    .line 47
    return-void
.end method

.method public setResizeSwitch(Z)V
    .locals 0
    .param p1, "shouldResize"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/incallui/view/AutoTextView;->resizeSwitch:Z

    .line 42
    return-void
.end method
