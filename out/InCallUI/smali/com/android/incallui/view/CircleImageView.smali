.class public Lcom/android/incallui/view/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private animationProgress:F

.field private centerX:I

.field private centerY:I

.field private mBounceAniSet:Landroid/animation/AnimatorSet;

.field private mCircleAnimator:Landroid/animation/ObjectAnimator;

.field private mImageAnimatorHeight:I

.field private mIsPlayArrow:Z

.field private mIsPressed:Z

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mPressPaint:Landroid/graphics/Paint;

.field private mTranslateDistanceBase:I

.field private outerRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v0, p0, Lcom/android/incallui/view/CircleImageView;->mIsPlayArrow:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/incallui/view/CircleImageView;->mIsPressed:Z

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/view/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v0, p0, Lcom/android/incallui/view/CircleImageView;->mIsPlayArrow:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/incallui/view/CircleImageView;->mIsPressed:Z

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/view/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-boolean v0, p0, Lcom/android/incallui/view/CircleImageView;->mIsPlayArrow:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/incallui/view/CircleImageView;->mIsPressed:Z

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/view/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/view/CircleImageView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/CircleImageView;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/android/incallui/view/CircleImageView;->animationProgress:F

    return p1
.end method

.method private getWaveRingRadius()F
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SmartCoverUtil;->isSmartCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 243
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->showTouchCircle()V

    .line 244
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnimatorObservable;->onAnimatorPause()V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->hideTouchCircle()V

    .line 249
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnimatorObservable;->onAnimatorResume()V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAnimatorImageHeight()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/incallui/view/CircleImageView;->mImageAnimatorHeight:I

    return v0
.end method

.method public getBounceAnimatorSet(I)Landroid/animation/AnimatorSet;
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 133
    iget-object v11, p0, Lcom/android/incallui/view/CircleImageView;->mBounceAniSet:Landroid/animation/AnimatorSet;

    if-nez v11, :cond_0

    .line 134
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, p0, Lcom/android/incallui/view/CircleImageView;->mBounceAniSet:Landroid/animation/AnimatorSet;

    .line 136
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 138
    .local v0, "kf0":Landroid/animation/Keyframe;
    const v11, 0x3e19999a    # 0.15f

    iget v12, p0, Lcom/android/incallui/view/CircleImageView;->mImageAnimatorHeight:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-static {v11, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 139
    .local v1, "kf1":Landroid/animation/Keyframe;
    const v12, 0x3ecccccd    # 0.4f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_1

    const/high16 v11, 0x40c00000    # 6.0f

    :goto_0
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 140
    .local v2, "kf2":Landroid/animation/Keyframe;
    const/high16 v12, 0x3f000000    # 0.5f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_2

    const/high16 v11, -0x3f800000    # -4.0f

    :goto_1
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 141
    .local v3, "kf3":Landroid/animation/Keyframe;
    const v12, 0x3f19999a    # 0.6f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_3

    const/high16 v11, 0x40800000    # 4.0f

    :goto_2
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 142
    .local v4, "kf4":Landroid/animation/Keyframe;
    const v12, 0x3f333333    # 0.7f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_4

    const/high16 v11, -0x3fc00000    # -3.0f

    :goto_3
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 143
    .local v5, "kf5":Landroid/animation/Keyframe;
    const/high16 v12, 0x3f400000    # 0.75f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_4
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 144
    .local v6, "kf6":Landroid/animation/Keyframe;
    const v12, 0x3f4ccccd    # 0.8f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    :goto_5
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 145
    .local v7, "kf7":Landroid/animation/Keyframe;
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 147
    .local v8, "kf8":Landroid/animation/Keyframe;
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v12, 0x9

    new-array v12, v12, [Landroid/animation/Keyframe;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v3, v12, v13

    const/4 v13, 0x4

    aput-object v4, v12, v13

    const/4 v13, 0x5

    aput-object v5, v12, v13

    const/4 v13, 0x6

    aput-object v6, v12, v13

    const/4 v13, 0x7

    aput-object v7, v12, v13

    const/16 v13, 0x8

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 149
    .local v9, "pvhHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 150
    .local v10, "translateY":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0x5dc

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 152
    mul-int/lit16 v11, p1, 0x87

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 153
    iget-object v11, p0, Lcom/android/incallui/view/CircleImageView;->mBounceAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 156
    .end local v0    # "kf0":Landroid/animation/Keyframe;
    .end local v1    # "kf1":Landroid/animation/Keyframe;
    .end local v2    # "kf2":Landroid/animation/Keyframe;
    .end local v3    # "kf3":Landroid/animation/Keyframe;
    .end local v4    # "kf4":Landroid/animation/Keyframe;
    .end local v5    # "kf5":Landroid/animation/Keyframe;
    .end local v6    # "kf6":Landroid/animation/Keyframe;
    .end local v7    # "kf7":Landroid/animation/Keyframe;
    .end local v8    # "kf8":Landroid/animation/Keyframe;
    .end local v9    # "pvhHolder":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v11, p0, Lcom/android/incallui/view/CircleImageView;->mBounceAniSet:Landroid/animation/AnimatorSet;

    return-object v11

    .line 139
    .restart local v0    # "kf0":Landroid/animation/Keyframe;
    .restart local v1    # "kf1":Landroid/animation/Keyframe;
    :cond_1
    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_0

    .line 140
    .restart local v2    # "kf2":Landroid/animation/Keyframe;
    :cond_2
    const/high16 v11, -0x40000000    # -2.0f

    goto/16 :goto_1

    .line 141
    .restart local v3    # "kf3":Landroid/animation/Keyframe;
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 142
    .restart local v4    # "kf4":Landroid/animation/Keyframe;
    :cond_4
    const/high16 v11, -0x40800000    # -1.0f

    goto :goto_3

    .line 143
    .restart local v5    # "kf5":Landroid/animation/Keyframe;
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 144
    .restart local v6    # "kf6":Landroid/animation/Keyframe;
    :cond_6
    const/4 v11, 0x0

    goto :goto_5
.end method

.method public getTranslateInAnimatorSet(I)Landroid/animation/ObjectAnimator;
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 161
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/incallui/view/CircleImageView;->mTranslateDistanceBase:I

    int-to-float v12, v12

    invoke-static {v11, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 162
    .local v0, "kf0":Landroid/animation/Keyframe;
    const v11, 0x3e99999a    # 0.3f

    iget v12, p0, Lcom/android/incallui/view/CircleImageView;->mImageAnimatorHeight:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-static {v11, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 163
    .local v1, "kf1":Landroid/animation/Keyframe;
    const/high16 v12, 0x3f000000    # 0.5f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_1

    const/high16 v11, 0x40a00000    # 5.0f

    :goto_0
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 164
    .local v2, "kf2":Landroid/animation/Keyframe;
    const v12, 0x3f19999a    # 0.6f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_2

    const/high16 v11, -0x3fc00000    # -3.0f

    :goto_1
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 165
    .local v3, "kf3":Landroid/animation/Keyframe;
    const v12, 0x3f333333    # 0.7f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_3

    const/high16 v11, 0x40000000    # 2.0f

    :goto_2
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 166
    .local v4, "kf4":Landroid/animation/Keyframe;
    const v12, 0x3f4ccccd    # 0.8f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_4

    const/high16 v11, -0x40800000    # -1.0f

    :goto_3
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 167
    .local v5, "kf5":Landroid/animation/Keyframe;
    const v12, 0x3f666666    # 0.9f

    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    :goto_4
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 168
    .local v6, "kf6":Landroid/animation/Keyframe;
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 170
    .local v7, "kf7":Landroid/animation/Keyframe;
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v12, 0x8

    new-array v12, v12, [Landroid/animation/Keyframe;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v3, v12, v13

    const/4 v13, 0x4

    aput-object v4, v12, v13

    const/4 v13, 0x5

    aput-object v5, v12, v13

    const/4 v13, 0x6

    aput-object v6, v12, v13

    const/4 v13, 0x7

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 172
    .local v8, "pvhHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 173
    .local v9, "translateY":Landroid/animation/ObjectAnimator;
    const/4 v11, 0x1

    if-ne p1, v11, :cond_6

    const-wide/16 v12, 0x640

    :goto_5
    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    move-object v10, p0

    .line 175
    .local v10, "view":Landroid/view/View;
    new-instance v11, Lcom/android/incallui/view/CircleImageView$2;

    invoke-direct {v11, p0, v10}, Lcom/android/incallui/view/CircleImageView$2;-><init>(Lcom/android/incallui/view/CircleImageView;Landroid/view/View;)V

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    const/4 v11, 0x1

    if-ne p1, v11, :cond_7

    .line 183
    const-wide/16 v12, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 189
    :cond_0
    :goto_6
    return-object v9

    .line 163
    .end local v2    # "kf2":Landroid/animation/Keyframe;
    .end local v3    # "kf3":Landroid/animation/Keyframe;
    .end local v4    # "kf4":Landroid/animation/Keyframe;
    .end local v5    # "kf5":Landroid/animation/Keyframe;
    .end local v6    # "kf6":Landroid/animation/Keyframe;
    .end local v7    # "kf7":Landroid/animation/Keyframe;
    .end local v8    # "pvhHolder":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "translateY":Landroid/animation/ObjectAnimator;
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    const/high16 v11, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 164
    .restart local v2    # "kf2":Landroid/animation/Keyframe;
    :cond_2
    const/high16 v11, -0x40000000    # -2.0f

    goto :goto_1

    .line 165
    .restart local v3    # "kf3":Landroid/animation/Keyframe;
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_2

    .line 166
    .restart local v4    # "kf4":Landroid/animation/Keyframe;
    :cond_4
    const/high16 v11, -0x41000000    # -0.5f

    goto :goto_3

    .line 167
    .restart local v5    # "kf5":Landroid/animation/Keyframe;
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 173
    .restart local v6    # "kf6":Landroid/animation/Keyframe;
    .restart local v7    # "kf7":Landroid/animation/Keyframe;
    .restart local v8    # "pvhHolder":Landroid/animation/PropertyValuesHolder;
    .restart local v9    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_6
    const-wide/16 v12, 0x4b0

    goto :goto_5

    .line 184
    .restart local v10    # "view":Landroid/view/View;
    :cond_7
    if-nez p1, :cond_8

    .line 185
    const-wide/16 v12, 0xfa

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_6

    .line 186
    :cond_8
    const/4 v11, 0x2

    if-ne p1, v11, :cond_0

    .line 187
    const-wide/16 v12, 0x15e

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_6
.end method

.method public hideTouchCircle()V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mCircleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/view/CircleImageView;->animationProgress:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 231
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mCircleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    return-void
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x1

    .line 76
    invoke-virtual {p0, v8}, Lcom/android/incallui/view/CircleImageView;->setFocusable(Z)V

    .line 77
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/android/incallui/view/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    invoke-virtual {p0, v8}, Lcom/android/incallui/view/CircleImageView;->setClickable(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/incallui/view/CircleImageView;->mTranslateDistanceBase:I

    .line 84
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mNormalPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mPressPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    const/high16 v1, -0x1000000

    .line 91
    .local v1, "normalColor":I
    const/high16 v3, -0x1000000

    .line 92
    .local v3, "pressColor":I
    if-eqz p2, :cond_0

    .line 93
    sget-object v5, Lcom/android/incallui/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 95
    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 96
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/android/incallui/view/CircleImageView;->mImageAnimatorHeight:I

    .line 99
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 100
    .local v2, "paintStyle":I
    if-nez v2, :cond_1

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 101
    .local v4, "style":Landroid/graphics/Paint$Style;
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "paintStyle":I
    .end local v4    # "style":Landroid/graphics/Paint$Style;
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/view/CircleImageView;->setColor(II)V

    .line 107
    const-string v5, "animationProgress"

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 108
    iget-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mCircleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    iget-object v5, p0, Lcom/android/incallui/view/CircleImageView;->mCircleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/incallui/view/CircleImageView$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/view/CircleImageView$1;-><init>(Lcom/android/incallui/view/CircleImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    return-void

    .line 100
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "paintStyle":I
    :cond_1
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    .line 107
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    iget v0, p0, Lcom/android/incallui/view/CircleImageView;->centerX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/incallui/view/CircleImageView;->centerY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/incallui/view/CircleImageView;->outerRadius:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/incallui/view/CircleImageView;->getWaveRingRadius()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/incallui/view/CircleImageView;->animationProgress:F

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    iget-boolean v0, p0, Lcom/android/incallui/view/CircleImageView;->mIsPressed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/view/CircleImageView;->animationProgress:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mPressPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 203
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mNormalPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 209
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/incallui/view/CircleImageView;->centerX:I

    .line 210
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/incallui/view/CircleImageView;->centerY:I

    .line 211
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/incallui/view/CircleImageView;->outerRadius:I

    .line 212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 258
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 260
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/incallui/view/CircleImageView;->mIsPressed:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 262
    iput-boolean v3, p0, Lcom/android/incallui/view/CircleImageView;->mIsPlayArrow:Z

    .line 264
    :cond_0
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/view/CircleImageView;->mIsPlayArrow:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/incallui/AnimatorObservable;->onViewTouchDown(Landroid/view/View;Z)V

    goto :goto_0

    .line 269
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/incallui/view/CircleImageView;->mIsPressed:Z

    .line 270
    iput-boolean v2, p0, Lcom/android/incallui/view/CircleImageView;->mIsPlayArrow:Z

    .line 271
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AnimatorObservable;->onViewTouchUp(Landroid/view/View;)V

    goto :goto_0

    .line 275
    :pswitch_2
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AnimatorObservable;->onViewMove(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public releaseBounceAnimatorSet()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mBounceAniSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mBounceAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mBounceAniSet:Landroid/animation/AnimatorSet;

    .line 197
    return-void
.end method

.method public setColor(II)V
    .locals 1
    .param p1, "normalColor"    # I
    .param p2, "pressColor"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/incallui/view/CircleImageView;->invalidate()V

    .line 227
    return-void
.end method

.method public showTouchCircle()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mCircleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/view/CircleImageView;->animationProgress:F

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/incallui/view/CircleImageView;->getWaveRingRadius()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView;->mCircleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 237
    return-void
.end method
