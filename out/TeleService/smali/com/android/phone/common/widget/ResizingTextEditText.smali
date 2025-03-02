.class public Lcom/android/phone/common/widget/ResizingTextEditText;
.super Landroid/widget/EditText;
.source "ResizingTextEditText.java"


# instance fields
.field private final mMinTextSize:I

.field private final mOriginalTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/phone/common/widget/ResizingTextEditText;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    .line 37
    sget-object v1, Lcom/android/phone/common/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 52
    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    .line 53
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 46
    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    .line 47
    return-void
.end method
