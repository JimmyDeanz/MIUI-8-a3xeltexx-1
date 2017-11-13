.class public Lcom/android/incallui/view/HorizontalSlideLayout;
.super Landroid/view/ViewGroup;
.source "HorizontalSlideLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field mAnswerFinalLeft:I

.field mAnswerHeight:I

.field mAnswerIndicator:Landroid/view/View;

.field mAnswerInitLeft:I

.field mAnswerLayout:Landroid/view/View;

.field mAnswerRange:I

.field mAnswerTop:I

.field mAnswerWidth:I

.field private mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field mIndicatorSpace:I

.field mLongCoverIndicatorDistance:I

.field mOnSlideFinishListener:Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

.field mRejectAnimatorSet:Landroid/animation/AnimatorSet;

.field mRejectFinalLeft:I

.field mRejectHeight:I

.field mRejectIndicator:Landroid/view/View;

.field mRejectInitLeft:I

.field mRejectLayout:Landroid/view/View;

.field mRejectRange:I

.field mRejectTop:I

.field mRejectWidth:I

.field mScaleRate:F

.field mShortCoverIndicatorDistance:I

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field mViewHeight:I

.field mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/incallui/view/HorizontalSlideLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/view/HorizontalSlideLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const v0, 0x3f933333    # 1.15f

    iput v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mScaleRate:F

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

    .line 272
    new-instance v0, Lcom/android/incallui/view/HorizontalSlideLayout$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/view/HorizontalSlideLayout$1;-><init>(Lcom/android/incallui/view/HorizontalSlideLayout;)V

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 66
    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mIndicatorSpace:I

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mShortCoverIndicatorDistance:I

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mLongCoverIndicatorDistance:I

    .line 70
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/incallui/view/HorizontalSlideLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/incallui/view/HorizontalSlideLayout;->startAnswerIndicatorAnim(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/incallui/view/HorizontalSlideLayout;->startRejectIndicatorAnim(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/view/HorizontalSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->stopRejectIndicatorAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/view/HorizontalSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->stopAnswerIndicatorAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/incallui/view/HorizontalSlideLayout;->internalDoReject(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/incallui/view/HorizontalSlideLayout;->internalInitReject(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/incallui/view/HorizontalSlideLayout;->internalDoAnswer(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/HorizontalSlideLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/incallui/view/HorizontalSlideLayout;->internalInitAnswer(Z)V

    return-void
.end method

.method private internalDoAnswer(Z)V
    .locals 6
    .param p1, "isSmooth"    # Z

    .prologue
    .line 421
    if-eqz p1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerFinalLeft:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerFinalLeft:I

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerFinalLeft:I

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private internalDoReject(Z)V
    .locals 6
    .param p1, "isSmooth"    # Z

    .prologue
    .line 457
    if-eqz p1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectFinalLeft:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectFinalLeft:I

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectFinalLeft:I

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private internalInitAnswer(Z)V
    .locals 6
    .param p1, "isSmooth"    # Z

    .prologue
    .line 433
    if-eqz p1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private internalInitReject(Z)V
    .locals 6
    .param p1, "isSmooth"    # Z

    .prologue
    .line 445
    if-eqz p1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    iget v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private startAnswerIndicatorAnim(Z)V
    .locals 10
    .param p1, "isSingleRun"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 216
    invoke-direct {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->stopAnswerIndicatorAnim()V

    .line 217
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 220
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v9

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mLongCoverIndicatorDistance:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 223
    .local v1, "translate_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 224
    .local v0, "alpha_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 225
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    :goto_0
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 232
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 233
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 234
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 235
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 236
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 237
    return-void

    .line 227
    .end local v0    # "alpha_animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "translate_animator":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v9

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mShortCoverIndicatorDistance:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 228
    .restart local v1    # "translate_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 229
    .restart local v0    # "alpha_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 223
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 228
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startRejectIndicatorAnim(Z)V
    .locals 10
    .param p1, "isSingleRun"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 184
    invoke-direct {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->stopRejectIndicatorAnim()V

    .line 185
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 188
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v9

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mLongCoverIndicatorDistance:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 191
    .local v1, "translate_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 192
    .local v0, "alpha_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 193
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    :goto_0
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 200
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 201
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 202
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 203
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 204
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 205
    return-void

    .line 195
    .end local v0    # "alpha_animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "translate_animator":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v9

    iget v5, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mShortCoverIndicatorDistance:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 196
    .restart local v1    # "translate_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 197
    .restart local v0    # "alpha_animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 191
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 196
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private stopAnswerIndicatorAnim()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 245
    return-void
.end method

.method private stopRejectIndicatorAnim()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectAnimatorSet:Landroid/animation/AnimatorSet;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 213
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 270
    :cond_0
    return-void
.end method

.method public hidePanel()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->isPanelShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method internalShowPanel()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 96
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 98
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 99
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 102
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->requestLayout()V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public isPanelShowing()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 79
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    .line 80
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    .line 81
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    .line 82
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    .line 83
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 123
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    iget v9, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    iget v10, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    iget v11, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    iget v12, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    iget v13, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 124
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    iget v9, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    iget v10, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    iget v11, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    iget v12, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    iget v13, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 126
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 127
    .local v5, "reject_indicatorW":I
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 128
    .local v4, "reject_indicatorH":I
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 129
    .local v1, "answer_indicatorW":I
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 130
    .local v0, "answer_indicatorH":I
    iget v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    iget v9, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mIndicatorSpace:I

    add-int v6, v8, v9

    .line 131
    .local v6, "reject_indicator_left":I
    iget v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v4, 0x2

    sub-int v7, v8, v9

    .line 132
    .local v7, "reject_indicator_top":I
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectIndicator:Landroid/view/View;

    add-int v9, v6, v5

    iget v10, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    sub-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 138
    iget v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    iget v9, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mIndicatorSpace:I

    sub-int/2addr v8, v9

    sub-int v2, v8, v1

    .line 139
    .local v2, "answer_indicator_left":I
    iget v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v0, 0x2

    sub-int v3, v8, v9

    .line 140
    .local v3, "answer_indicator_top":I
    iget-object v8, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    add-int v9, v2, v1

    iget v10, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    sub-int/2addr v10, v3

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 146
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/incallui/view/HorizontalSlideLayout;->startRejectIndicatorAnim(Z)V

    .line 147
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/incallui/view/HorizontalSlideLayout;->startAnswerIndicatorAnim(Z)V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 153
    .local v2, "widthSize":I
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/view/HorizontalSlideLayout;->measureChildren(II)V

    .line 154
    iget-object v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 156
    .local v0, "height":I
    int-to-float v3, v0

    iget v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mScaleRate:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 157
    .local v1, "heightSize":I
    sget-object v3, Lcom/android/incallui/view/HorizontalSlideLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/view/HorizontalSlideLayout;->setMeasuredDimension(II)V

    .line 159
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 163
    sget-object v1, Lcom/android/incallui/view/HorizontalSlideLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iput p1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    .line 165
    iput p2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    .line 166
    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    .line 167
    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectHeight:I

    .line 169
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mScaleRate:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 170
    .local v0, "extraWidthSpace":I
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectTop:I

    .line 171
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectRange:I

    .line 172
    iput v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    .line 173
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectRange:I

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectFinalLeft:I

    .line 174
    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    .line 175
    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerHeight:I

    .line 176
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerTop:I

    .line 177
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerRange:I

    .line 178
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    .line 179
    iget v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    iget v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerRange:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerFinalLeft:I

    .line 181
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnSlideFinishListener(Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;)V
    .locals 0
    .param p1, "onSlideFinishListener"    # Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/incallui/view/HorizontalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

    .line 74
    return-void
.end method

.method public showPanel()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->isPanelShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/view/HorizontalSlideLayout;->internalShowPanel()V

    goto :goto_0
.end method
