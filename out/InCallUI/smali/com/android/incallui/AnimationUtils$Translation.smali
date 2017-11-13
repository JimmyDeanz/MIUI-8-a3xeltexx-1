.class public Lcom/android/incallui/AnimationUtils$Translation;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Translation"
.end annotation


# direct methods
.method public static isTranslationOut(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 224
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "translation_out"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static translationIn(Landroid/view/View;Landroid/util/Property;III)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p1, "translationType":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/incallui/AnimationUtils$Translation;->isTranslationOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 166
    .local v1, "inSet":Landroid/animation/AnimatorSet;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 167
    .local v0, "inAlpha":Landroid/animation/ObjectAnimator;
    new-array v3, v6, [F

    int-to-float v4, p2

    aput v4, v3, v7

    int-to-float v4, p3

    aput v4, v3, v8

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 169
    .local v2, "inTranslate":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/incallui/AnimationUtils$Translation$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnimationUtils$Translation$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    int-to-long v4, p4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 176
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 177
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 179
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 185
    .end local v0    # "inAlpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "inSet":Landroid/animation/AnimatorSet;
    .end local v2    # "inTranslate":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 166
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
