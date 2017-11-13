.class public final Lcom/android/incallui/view/CallCardOptionalInfoView;
.super Lcom/android/incallui/view/IndexSortedView;
.source "CallCardOptionalInfoView.java"


# instance fields
.field private mCallCardExtraTitle:Landroid/widget/TextView;

.field private mCallProviderInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/CallCardOptionalInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/CallCardOptionalInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/view/IndexSortedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->configIndexFrontNoDivider([I)V

    .line 36
    return-void
.end method

.method private createViewByIndex(I)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, -0x2

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 71
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "error index"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :pswitch_0
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "titleView":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/android/incallui/view/CallCardOptionalInfoView;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    const/4 v3, 0x0

    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Lcom/android/incallui/view/CallCardOptionalInfoView;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    move-object v2, v1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    return-object v2

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getViewByIndex(I)Landroid/view/View;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error index"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallProviderInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallProviderInfo:Landroid/widget/TextView;

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallCardExtraTitle:Landroid/widget/TextView;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 86
    :goto_1
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallCardExtraTitle:Landroid/widget/TextView;

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getDividerView(I)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x2

    .line 45
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 48
    .local v0, "dividerMargin":I
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 49
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 50
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    return-object v1
.end method

.method protected getTotalViewCount()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    return v0
.end method

.method public removeViewByIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/incallui/view/IndexSortedView;->removeViewByIndex(I)V

    .line 96
    return-void
.end method

.method public showExtraInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0, v1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallCardExtraTitle:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallCardExtraTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallCardExtraTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->addIndexView(ILandroid/view/View;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallCardExtraTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->removeViewByIndex(I)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallCardExtraTitle:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public showProviderInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "company"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-direct {p0, v1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallProviderInfo:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallProviderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallProviderInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/CallCardOptionalInfoView;->addIndexView(ILandroid/view/View;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallProviderInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardOptionalInfoView;->removeViewByIndex(I)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CallCardOptionalInfoView;->mCallProviderInfo:Landroid/widget/TextView;

    goto :goto_0
.end method
