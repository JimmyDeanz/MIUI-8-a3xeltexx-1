.class public Lcom/android/phone/DialpadButton;
.super Landroid/widget/LinearLayout;
.source "DialpadButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/DialpadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/android/phone/DialpadButton;->setOrientation(I)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    sget-object v1, Lcom/android/phone/R$styleable;->DialpadButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButton;->addTopTextView(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButton;->addBottomTextView(Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/DialpadButton;->addImageView(Landroid/graphics/drawable/Drawable;Z)V

    .line 31
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/DialpadButton;->addImageView(Landroid/graphics/drawable/Drawable;Z)V

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private addBottomTextView(Ljava/lang/String;)V
    .locals 5
    .param p1, "bottomText"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/DialpadButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "alphabetView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/DialpadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/DialpadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    const-string v1, "miui-regular"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 64
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 65
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/DialpadButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .end local v0    # "alphabetView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private addImageView(Landroid/graphics/drawable/Drawable;Z)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isBottom"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 71
    if-eqz p1, :cond_1

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/DialpadButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/phone/DialpadButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 77
    .local v1, "textPaddingBottom":I
    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 79
    .end local v1    # "textPaddingBottom":I
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/DialpadButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private addTopTextView(Ljava/lang/String;)V
    .locals 6
    .param p1, "topText"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/DialpadButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "numberView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/phone/DialpadButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 42
    .local v1, "textPaddingBottom":I
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/DialpadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    invoke-virtual {p0}, Lcom/android/phone/DialpadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const-string v2, "miui-light"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 48
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 49
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/DialpadButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .end local v0    # "numberView":Landroid/widget/TextView;
    .end local v1    # "textPaddingBottom":I
    :cond_0
    return-void
.end method
