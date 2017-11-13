.class public Lcom/android/incallui/view/ArrowImageView;
.super Landroid/widget/ImageView;
.source "ArrowImageView.java"


# instance fields
.field private moveUpAnim:Landroid/animation/AnimatorSet;

.field private translateFadeIn:Landroid/animation/AnimatorSet;

.field private translateFadeOut:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/view/ArrowImageView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/ArrowImageView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/view/ArrowImageView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/ArrowImageView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    return-object v0
.end method


# virtual methods
.method public cancelAllAnimator()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 163
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 173
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ArrowImageView;->setTranslationY(F)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/incallui/view/ArrowImageView;->setScaleX(F)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/incallui/view/ArrowImageView;->setScaleY(F)V

    .line 176
    iput-object v1, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    .line 177
    iput-object v1, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    .line 178
    iput-object v1, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    .line 179
    return-void
.end method

.method public cancelArrowTranslateAnimator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 182
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 189
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ArrowImageView;->setTranslationY(F)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/ArrowImageView;->setScaleX(F)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/ArrowImageView;->setScaleY(F)V

    .line 192
    iput-object v2, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    .line 193
    iput-object v2, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    .line 194
    return-void
.end method

.method public playArrowMoveUpAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 125
    invoke-virtual {p0}, Lcom/android/incallui/view/ArrowImageView;->cancelArrowTranslateAnimator()V

    .line 126
    iget-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 127
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    .line 128
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 129
    .local v2, "translateYAnim":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 130
    .local v0, "scaleXAnim":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 131
    .local v1, "scaleYAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    iget-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 133
    iget-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 134
    iget-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/view/ArrowImageView$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/view/ArrowImageView$3;-><init>(Lcom/android/incallui/view/ArrowImageView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    .end local v0    # "scaleXAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "scaleYAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "translateYAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/android/incallui/view/ArrowImageView;->moveUpAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 160
    :cond_1
    return-void

    .line 128
    nop

    :array_0
    .array-data 4
        0x0
        -0x3cbd0000    # -195.0f
    .end array-data

    .line 129
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f451eb8    # 0.77f
    .end array-data

    .line 130
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f451eb8    # 0.77f
    .end array-data
.end method

.method public playArrowRepeatTranslateAnimator(Z)V
    .locals 12
    .param p1, "isInitAnim"    # Z

    .prologue
    const v5, 0x3f451eb8    # 0.77f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 51
    if-eqz p1, :cond_2

    .line 52
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/android/incallui/view/ArrowImageView;->setScaleX(F)V

    .line 53
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/android/incallui/view/ArrowImageView;->setScaleY(F)V

    .line 54
    invoke-virtual {p0, v11}, Lcom/android/incallui/view/ArrowImageView;->setTranslationY(F)V

    .line 55
    const/4 v4, 0x0

    .line 62
    .local v4, "translateYSpan":F
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_0

    .line 63
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    .line 64
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    .line 65
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    sub-float v7, v11, v4

    aput v7, v6, v9

    const/high16 v7, -0x3df40000    # -35.0f

    sub-float/2addr v7, v4

    aput v7, v6, v10

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 66
    .local v3, "translateFadeOutY":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 67
    .local v1, "alphaFadeOut":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 68
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    new-instance v6, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v3, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 70
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    const/high16 v7, 0x420c0000    # 35.0f

    sub-float/2addr v7, v4

    aput v7, v6, v9

    sub-float v7, v11, v4

    aput v7, v6, v10

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 71
    .local v2, "translateFadeInY":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 72
    .local v0, "alphaFadeIn":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 73
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x258

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 74
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v2, v6, v9

    aput-object v0, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 76
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/incallui/view/ArrowImageView$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/view/ArrowImageView$1;-><init>(Lcom/android/incallui/view/ArrowImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/incallui/view/ArrowImageView$2;

    invoke-direct {v6, p0}, Lcom/android/incallui/view/ArrowImageView$2;-><init>(Lcom/android/incallui/view/ArrowImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    .end local v0    # "alphaFadeIn":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaFadeOut":Landroid/animation/ObjectAnimator;
    .end local v2    # "translateFadeInY":Landroid/animation/ObjectAnimator;
    .end local v3    # "translateFadeOutY":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/android/incallui/view/ArrowImageView;->translateFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 122
    :cond_1
    return-void

    .line 57
    .end local v4    # "translateYSpan":F
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/incallui/view/ArrowImageView;->setScaleX(F)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/android/incallui/view/ArrowImageView;->setScaleY(F)V

    .line 59
    const/high16 v4, 0x43430000    # 195.0f

    .line 60
    .restart local v4    # "translateYSpan":F
    neg-float v5, v4

    invoke-virtual {p0, v5}, Lcom/android/incallui/view/ArrowImageView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 66
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 71
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
