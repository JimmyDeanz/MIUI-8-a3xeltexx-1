.class public final Lcom/android/incallui/view/LabelAndNumberView;
.super Lcom/android/incallui/view/IndexSortedView;
.source "LabelAndNumberView.java"


# instance fields
.field private mCallCardTelocation:Landroid/widget/TextView;

.field private mMarkCount:Landroid/widget/TextView;

.field private mMarkProvider:Landroid/widget/ImageView;

.field private mMarkTitle:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mSimCardInfo:Landroid/widget/ImageView;

.field private mSpeechHD:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/LabelAndNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/LabelAndNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/view/IndexSortedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/LabelAndNumberView;->configIndexFrontNoDivider([I)V

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/LabelAndNumberView;->configIndexBackNoDivider([I)V

    .line 52
    return-void

    .line 50
    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x6
    .end array-data
.end method

.method private createViewByIndex(I)Landroid/view/View;
    .locals 12
    .param p1, "index"    # I

    .prologue
    const v11, 0x7f060007

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x2

    const/16 v8, 0x10

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 124
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "error index"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 77
    :pswitch_0
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v4, "simCard":Landroid/widget/ImageView;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 79
    const v7, 0x7f080041

    invoke-virtual {p0, v7}, Lcom/android/incallui/view/LabelAndNumberView;->getSize(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 80
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    move-object v6, v4

    .line 126
    .end local v4    # "simCard":Landroid/widget/ImageView;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    return-object v6

    .line 84
    :pswitch_1
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "numberView":Landroid/widget/TextView;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 86
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0, v11}, Lcom/android/incallui/view/LabelAndNumberView;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    const v7, 0x7f080011

    invoke-virtual {p0, v7}, Lcom/android/incallui/view/LabelAndNumberView;->getSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 91
    move-object v6, v1

    .line 92
    goto :goto_0

    .line 96
    .end local v1    # "numberView":Landroid/widget/TextView;
    :pswitch_2
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v5, "titleView":Landroid/widget/TextView;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 98
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 99
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-virtual {p0, v11}, Lcom/android/incallui/view/LabelAndNumberView;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const v7, 0x7f080012

    invoke-virtual {p0, v7}, Lcom/android/incallui/view/LabelAndNumberView;->getSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 103
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 105
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 107
    :cond_0
    move-object v6, v5

    .line 108
    goto :goto_0

    .line 110
    .end local v5    # "titleView":Landroid/widget/TextView;
    :pswitch_3
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v3, "provider":Landroid/widget/ImageView;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    move-object v6, v3

    .line 115
    goto/16 :goto_0

    .line 117
    .end local v3    # "provider":Landroid/widget/ImageView;
    :pswitch_4
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "hdView":Landroid/widget/ImageView;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 119
    const v7, 0x7f080042

    invoke-virtual {p0, v7}, Lcom/android/incallui/view/LabelAndNumberView;->getSize(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    move-object v6, v0

    .line 122
    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getViewByIndex(I)Landroid/view/View;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error index"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSimCardInfo:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSimCardInfo:Landroid/widget/ImageView;

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 138
    :goto_1
    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    goto :goto_1

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkTitle:Landroid/widget/TextView;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 141
    :goto_2
    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkTitle:Landroid/widget/TextView;

    goto :goto_2

    .line 143
    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkCount:Landroid/widget/TextView;

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 144
    :goto_3
    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkCount:Landroid/widget/TextView;

    goto :goto_3

    .line 146
    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkProvider:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 147
    :goto_4
    goto :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkProvider:Landroid/widget/ImageView;

    goto :goto_4

    .line 149
    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/view/LabelAndNumberView;->mCallCardTelocation:Landroid/widget/TextView;

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 150
    :goto_5
    goto :goto_0

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mCallCardTelocation:Landroid/widget/TextView;

    goto :goto_5

    .line 152
    :pswitch_6
    iget-object v1, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSpeechHD:Landroid/widget/ImageView;

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/incallui/view/LabelAndNumberView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 153
    :goto_6
    goto :goto_0

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSpeechHD:Landroid/widget/ImageView;

    goto :goto_6

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showMarkCount(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "markCount"    # Ljava/lang/String;
    .param p2, "isShow"    # Z

    .prologue
    const/4 v1, 0x3

    .line 213
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-direct {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkCount:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkCount:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/LabelAndNumberView;->addIndexView(ILandroid/view/View;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->removeViewByIndex(I)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkCount:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private showMarkProvider(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isShow"    # Z

    .prologue
    const/4 v1, 0x4

    .line 226
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 227
    invoke-direct {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkProvider:Landroid/widget/ImageView;

    .line 228
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkProvider:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkProvider:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/LabelAndNumberView;->addIndexView(ILandroid/view/View;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkProvider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->removeViewByIndex(I)V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkProvider:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private showMarkTitle(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "markTitle"    # Ljava/lang/String;
    .param p2, "isShow"    # Z

    .prologue
    const/4 v1, 0x2

    .line 200
    if-eqz p2, :cond_1

    .line 201
    invoke-direct {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkTitle:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/LabelAndNumberView;->addIndexView(ILandroid/view/View;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->removeViewByIndex(I)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mMarkTitle:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method protected getDividerView(I)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x2

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/view/LabelAndNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 64
    .local v0, "dividerMargin":I
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 66
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    return-object v1
.end method

.method public getPhoneNumber()Landroid/view/View;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getTotalViewCount()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x7

    return v0
.end method

.method public removeViewByIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/android/incallui/view/IndexSortedView;->removeViewByIndex(I)V

    .line 163
    return-void
.end method

.method public setMultiSimIndicator(IZ)V
    .locals 2
    .param p1, "simResId"    # I
    .param p2, "isShow"    # Z

    .prologue
    const/4 v1, 0x0

    .line 180
    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 181
    invoke-direct {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSimCardInfo:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/LabelAndNumberView;->addIndexView(ILandroid/view/View;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSimCardInfo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->removeViewByIndex(I)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSimCardInfo:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public showHDAudioIndicator(ZI)V
    .locals 2
    .param p1, "isShow"    # Z
    .param p2, "speechHDResId"    # I

    .prologue
    const/4 v1, 0x6

    .line 167
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 168
    invoke-direct {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSpeechHD:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSpeechHD:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSpeechHD:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/LabelAndNumberView;->addIndexView(ILandroid/view/View;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSpeechHD:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->removeViewByIndex(I)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mSpeechHD:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public showMarkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "markTitle"    # Ljava/lang/String;
    .param p2, "markCount"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 194
    .local v0, "isShow":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/LabelAndNumberView;->showMarkTitle(Ljava/lang/String;Z)V

    .line 195
    invoke-direct {p0, p2, v0}, Lcom/android/incallui/view/LabelAndNumberView;->showMarkCount(Ljava/lang/String;Z)V

    .line 196
    invoke-direct {p0, p3, v0}, Lcom/android/incallui/view/LabelAndNumberView;->showMarkProvider(Landroid/graphics/Bitmap;Z)V

    .line 197
    return-void

    .line 193
    .end local v0    # "isShow":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPhoneNumber(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-direct {p0, v2}, Lcom/android/incallui/view/LabelAndNumberView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 243
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/view/LabelAndNumberView;->addIndexView(ILandroid/view/View;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/incallui/view/LabelAndNumberView;->removeViewByIndex(I)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mPhoneNumber:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public showTelocation(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "telocation"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x5

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-direct {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mCallCardTelocation:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mCallCardTelocation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mCallCardTelocation:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/LabelAndNumberView;->addIndexView(ILandroid/view/View;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mCallCardTelocation:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/LabelAndNumberView;->removeViewByIndex(I)V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/LabelAndNumberView;->mCallCardTelocation:Landroid/widget/TextView;

    goto :goto_0
.end method
