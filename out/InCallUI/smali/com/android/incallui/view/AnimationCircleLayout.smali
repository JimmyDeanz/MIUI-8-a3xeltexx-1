.class public Lcom/android/incallui/view/AnimationCircleLayout;
.super Landroid/widget/FrameLayout;
.source "AnimationCircleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;,
        Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;
    }
.end annotation


# instance fields
.field private cdr:F

.field private cdx:F

.field private cdy:F

.field private mAnimationRunning:Z

.field private mAnimationSet:Landroid/animation/AnimatorSet;

.field private mDurationCircleShrink:J

.field private mIsNeedTranslateY:Z

.field private mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

.field private mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

.field private mOriginR:F

.field private mOriginX:F

.field private mOriginY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mShouldClipView:Z

.field private mTagForLog:Ljava/lang/String;

.field private mTargetR:F

.field private mTargetX:F

.field private mTargetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/AnimationCircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/AnimationCircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetX:F

    .line 57
    iput v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetY:F

    .line 58
    iput v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetR:F

    .line 59
    iput v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginX:F

    .line 60
    iput v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginY:F

    .line 61
    iput v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginR:F

    .line 62
    iput v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdr:F

    .line 63
    iput v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdx:F

    .line 64
    iput v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdy:F

    .line 66
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mDurationCircleShrink:J

    .line 67
    iput-boolean v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationRunning:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mShouldClipView:Z

    .line 71
    iput-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z

    .line 73
    iput-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 74
    iput-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/incallui/view/AnimationCircleLayout;->setWillNotDraw(Z)V

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/view/AnimationCircleLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdy:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/view/AnimationCircleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetY:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/view/AnimationCircleLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/incallui/view/AnimationCircleLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/view/AnimationCircleLayout;FFFFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/android/incallui/view/AnimationCircleLayout;->setValues(FFFFFF)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/incallui/view/AnimationCircleLayout;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;
    .param p1, "x1"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mDurationCircleShrink:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/incallui/view/AnimationCircleLayout;Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;)Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;
    .param p1, "x1"    # Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/view/AnimationCircleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginY:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/view/AnimationCircleLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdr:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/view/AnimationCircleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetR:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/view/AnimationCircleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginR:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/view/AnimationCircleLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdx:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/view/AnimationCircleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/view/AnimationCircleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginX:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/view/AnimationCircleLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/AnimationCircleLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    return-object v0
.end method

.method private clearAnimator()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clear animator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 265
    return-void
.end method

.method private getTranslateYAnimator()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 211
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetY:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetR:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 212
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v1, Lcom/android/incallui/view/AnimationCircleLayout$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/view/AnimationCircleLayout$3;-><init>(Lcom/android/incallui/view/AnimationCircleLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 230
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 231
    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    return-object v0
.end method

.method private setValues(FFFFFF)V
    .locals 2
    .param p1, "originX"    # F
    .param p2, "originY"    # F
    .param p3, "originR"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F
    .param p6, "targetR"    # F

    .prologue
    .line 100
    iput p4, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetX:F

    .line 101
    iput p5, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetY:F

    .line 102
    iput p6, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTargetR:F

    .line 103
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginX:F

    .line 104
    iput p2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginY:F

    .line 105
    iput p3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginR:F

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPath:Landroid/graphics/Path;

    .line 111
    return-void
.end method

.method private startAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 171
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 172
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 173
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/incallui/view/AnimationCircleLayout$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/view/AnimationCircleLayout$1;-><init>(Lcom/android/incallui/view/AnimationCircleLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    iget-wide v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mDurationCircleShrink:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    new-instance v2, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    new-instance v2, Lcom/android/incallui/view/AnimationCircleLayout$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/view/AnimationCircleLayout$2;-><init>(Lcom/android/incallui/view/AnimationCircleLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-boolean v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z

    if-eqz v2, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/incallui/view/AnimationCircleLayout;->getTranslateYAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 202
    .local v0, "transYAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 206
    .end local v0    # "transYAnimator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startCircleAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    return-void

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 172
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public directAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " directAnimationEnd, isCallBack:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iput-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    .line 241
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    invoke-interface {v0}, Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;->onAnimationEnd()V

    .line 243
    iput-boolean v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationRunning:Z

    .line 244
    iput-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    .line 246
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 239
    goto :goto_0
.end method

.method public getCircleAnimationBuilder()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    invoke-direct {v0, p0}, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;-><init>(Lcom/android/incallui/view/AnimationCircleLayout;)V

    iput-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    return-object v0
.end method

.method public isAnimationRuning()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationRunning:Z

    return v0
.end method

.method public isInClipState()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mShouldClipView:Z

    return v0
.end method

.method public logCurrentState()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clipView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mShouldClipView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " transY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/view/AnimationCircleLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/util/KLog;->logIt(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clipView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mShouldClipView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " transY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/view/AnimationCircleLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 270
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 275
    invoke-direct {p0}, Lcom/android/incallui/view/AnimationCircleLayout;->clearAnimator()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    .line 277
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 251
    iget-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mShouldClipView:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 253
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 254
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginX:F

    iget v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdx:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginY:F

    iget v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdy:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOriginR:F

    iget v4, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdr:F

    add-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 255
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 257
    :cond_0
    return-void
.end method

.method public resetLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reset Layout start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mShouldClipView:Z

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationRunning:Z

    .line 123
    iput-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    .line 124
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mDurationCircleShrink:J

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z

    .line 126
    iput v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdr:F

    iput v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdy:F

    iput v3, p0, Lcom/android/incallui/view/AnimationCircleLayout;->cdx:F

    .line 127
    iput-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPaint:Landroid/graphics/Paint;

    .line 128
    iput-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mPath:Landroid/graphics/Path;

    .line 129
    iput-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    .line 130
    invoke-direct {p0}, Lcom/android/incallui/view/AnimationCircleLayout;->clearAnimator()V

    .line 131
    invoke-virtual {p0}, Lcom/android/incallui/view/AnimationCircleLayout;->invalidate()V

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/incallui/view/AnimationCircleLayout;->setTranslationY(F)V

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/incallui/view/AnimationCircleLayout;->setTranslationX(F)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reset Layout end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setTagForLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public startCircleAnimation()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mLayoutAnimCircleAnimationBuilder:Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you should init LayoutBuilder first!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mShouldClipView:Z

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout;->mAnimationRunning:Z

    .line 167
    invoke-direct {p0}, Lcom/android/incallui/view/AnimationCircleLayout;->startAnimation()V

    .line 168
    return-void
.end method
