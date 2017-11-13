.class public final Lcom/android/incallui/view/CallCardStateInfoView;
.super Lcom/android/incallui/view/IndexSortedView;
.source "CallCardStateInfoView.java"


# instance fields
.field private mCallStateLabel:Landroid/widget/TextView;

.field private mConferenceCallNumber:Landroid/widget/TextView;

.field private mConferenceMode:Landroid/widget/TextView;

.field private mConferenceSimCardInfo:Landroid/widget/ImageView;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mLiveTalkLeftMinutes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/CallCardStateInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/CallCardStateInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/view/IndexSortedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->configIndexFrontNoDivider([I)V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->configIndexBackNoDivider([I)V

    .line 55
    return-void

    .line 53
    :array_0
    .array-data 4
        0x0
        0x1
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/view/CallCardStateInfoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/CallCardStateInfoView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method private createViewByIndex(I)Landroid/view/View;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x1

    .line 76
    const/4 v5, 0x0

    .line 77
    .local v5, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 117
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "error index"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 80
    :pswitch_0
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardStateInfoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v3, "simCard":Landroid/widget/ImageView;
    const/16 v6, 0x10

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 82
    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lcom/android/incallui/view/CallCardStateInfoView;->getSize(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 83
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    move-object v5, v3

    .line 119
    .end local v3    # "simCard":Landroid/widget/ImageView;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    return-object v5

    .line 90
    :pswitch_1
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardStateInfoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v4, "titleView":Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 92
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const v6, 0x7f080012

    invoke-virtual {p0, v6}, Lcom/android/incallui/view/CallCardStateInfoView;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 97
    const/4 v6, 0x2

    if-eq p1, v6, :cond_0

    if-ne p1, v9, :cond_2

    .line 98
    :cond_0
    const v0, 0x7f06000f

    .line 102
    .local v0, "colorResId":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    if-ne v9, p1, :cond_1

    .line 104
    const v6, 0x7f0c0057

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 106
    :cond_1
    move-object v5, v4

    .line 107
    goto :goto_0

    .line 100
    .end local v0    # "colorResId":I
    :cond_2
    const v0, 0x7f060007

    .restart local v0    # "colorResId":I
    goto :goto_1

    .line 109
    .end local v0    # "colorResId":I
    .end local v4    # "titleView":Landroid/widget/TextView;
    :pswitch_2
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardStateInfoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "elapsedTime":Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const v6, 0x7f060006

    invoke-virtual {p0, v6}, Lcom/android/incallui/view/CallCardStateInfoView;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    const v6, 0x7f080014

    invoke-virtual {p0, v6}, Lcom/android/incallui/view/CallCardStateInfoView;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    move-object v5, v1

    .line 115
    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getViewByIndex(I)Landroid/view/View;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error index"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 131
    :goto_1
    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    goto :goto_1

    .line 133
    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 134
    :goto_2
    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    goto :goto_2

    .line 136
    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 137
    :goto_3
    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    goto :goto_3

    .line 139
    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceMode:Landroid/widget/TextView;

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 140
    :goto_4
    goto :goto_0

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceMode:Landroid/widget/TextView;

    goto :goto_4

    .line 142
    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceCallNumber:Landroid/widget/TextView;

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/view/CallCardStateInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 143
    :goto_5
    goto :goto_0

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceCallNumber:Landroid/widget/TextView;

    goto :goto_5

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private playElapsedTimeTranslateIn()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 230
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 232
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 233
    .local v1, "elapsedTimeAlpha":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 235
    .local v2, "elapsedTimeTranslate":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/incallui/view/CallCardStateInfoView$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/view/CallCardStateInfoView$1;-><init>(Lcom/android/incallui/view/CallCardStateInfoView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 244
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 245
    return-void

    .line 232
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 233
    :array_1
    .array-data 4
        0x41500000    # 13.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public getCallStateLabel()Landroid/view/View;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDividerView(I)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x2

    .line 64
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardStateInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/view/CallCardStateInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 67
    .local v0, "dividerMargin":I
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 68
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 69
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    return-object v1
.end method

.method protected getTotalViewCount()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x6

    return v0
.end method

.method public isCallStateLabelVisible()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLiveTalkLeftMinutesVisible()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewByIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/incallui/view/IndexSortedView;->removeViewByIndex(I)V

    .line 153
    return-void
.end method

.method public setCallCardStateLabel(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callStateLabel"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 249
    invoke-direct {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->addIndexView(ILandroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-ne p2, v3, :cond_3

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 266
    :cond_2
    :goto_0
    return-void

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallElapsedTime(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 212
    if-eqz p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0, v2}, Lcom/android/incallui/view/CallCardStateInfoView;->createViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->addIndexView(ILandroid/view/View;)V

    .line 217
    invoke-direct {p0}, Lcom/android/incallui/view/CallCardStateInfoView;->playElapsedTimeTranslateIn()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/android/incallui/util/Utils;->measureWidthForTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0, v2}, Lcom/android/incallui/view/CallCardStateInfoView;->removeViewByIndex(I)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setConferenceCallNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "callCount"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x5

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceCallNumber:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceCallNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->addIndexView(ILandroid/view/View;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->removeViewByIndex(I)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceCallNumber:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setConferenceMode(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    const/4 v1, 0x4

    .line 200
    if-eqz p1, :cond_1

    .line 201
    invoke-direct {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceMode:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceMode:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->addIndexView(ILandroid/view/View;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceMode:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->removeViewByIndex(I)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceMode:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setConferenceMultiSimIndicator(IZ)V
    .locals 2
    .param p1, "simResId"    # I
    .param p2, "isShow"    # Z

    .prologue
    const/4 v1, 0x0

    .line 157
    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->addIndexView(ILandroid/view/View;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->removeViewByIndex(I)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public setLiveTalkLeftMinutes(Ljava/lang/String;)V
    .locals 2
    .param p1, "leftMinute"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-direct {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/view/CallCardStateInfoView;->addIndexView(ILandroid/view/View;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/CallCardStateInfoView;->removeViewByIndex(I)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView;->mLiveTalkLeftMinutes:Landroid/widget/TextView;

    goto :goto_0
.end method
