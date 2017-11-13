.class public Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SmartCoverAnswerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/OnAnimatorChanged;
.implements Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
.implements Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;",
        "Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/incallui/OnAnimatorChanged;",
        "Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;",
        "Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isCallInfoAnimFinished:Z

.field private isFirstShow:Z

.field private isMarkInfoNeedToShow:Z

.field private isShowingAnswerUI:Z

.field private mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

.field private mAnswerImg:Lcom/android/incallui/view/CircleImageView;

.field private mAnswerOperView:Landroid/view/View;

.field private mArrowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/view/CircleImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCallCardConferenceManageButton:Landroid/widget/ImageView;

.field private mCallCardExtraDivider:Landroid/widget/ImageView;

.field private mCallCardExtraInfo:Landroid/widget/LinearLayout;

.field private mCallCardExtraTitle:Landroid/widget/TextView;

.field private mCallCardMarkInfo:Landroid/widget/LinearLayout;

.field private mCallCardNumberSep:Landroid/view/View;

.field private mCallCardOptionalInfo:Landroid/widget/LinearLayout;

.field private mCallCardTelocation:Landroid/widget/TextView;

.field private mCallProviderInfo:Landroid/widget/TextView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateLabelDivider:Landroid/widget/ImageView;

.field private mCallType:I

.field private mCallerNameSet:Landroid/animation/AnimatorSet;

.field private mCircleAnimatorSet:Landroid/animation/AnimatorSet;

.field private mConferenceCallMarkSep:Landroid/view/View;

.field private mConferenceCallNumber:Landroid/widget/TextView;

.field private mConferenceSimCardInfo:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mDefaultPanelHeight:I

.field private mElapsedTime:Landroid/widget/TextView;

.field private mEndBtn:Landroid/widget/Button;

.field protected mHandler:Landroid/os/Handler;

.field private mLabelAndNumber:Landroid/view/View;

.field private mMarkCount:Landroid/widget/TextView;

.field private mMarkDivider:Landroid/widget/ImageView;

.field private mMarkProvider:Landroid/widget/ImageView;

.field private mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mMarkTitle:Landroid/widget/TextView;

.field private mOperateLayout:Landroid/widget/LinearLayout;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mPrimaryCallBanner:Landroid/widget/LinearLayout;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/View;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mProviderNumber:Landroid/widget/TextView;

.field private mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

.field private mRejectImg:Lcom/android/incallui/view/CircleImageView;

.field private mRootView:Landroid/view/View;

.field private mSimCardInfo:Landroid/widget/ImageView;

.field private mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

.field private mSubscriptionId:Landroid/widget/TextView;

.field private mTranslateInList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/view/CircleImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    .line 122
    iput-boolean v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isCallInfoAnimFinished:Z

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mDefaultPanelHeight:I

    .line 142
    iput-boolean v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isShowingAnswerUI:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isFirstShow:Z

    .line 145
    new-instance v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$1;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mLabelAndNumber:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playMarkInfoAnimator()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isCallInfoAnimFinished:Z

    return p1
.end method

.method private getDefaultPanelHeight()I
    .locals 3

    .prologue
    .line 342
    iget v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mDefaultPanelHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mDefaultPanelHeight:I

    .line 345
    invoke-static {}, Landroid/content/res/MiuiConfiguration;->getScaleMode()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 346
    iget v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mDefaultPanelHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mDefaultPanelHeight:I

    .line 350
    :cond_0
    sget-object v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPanelHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mDefaultPanelHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mDefaultPanelHeight:I

    return v0
.end method

.method private hideOperateItems()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 355
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->stopCircleBounceAnimator()V

    .line 357
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setMaxTransparent()V

    .line 359
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 364
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1096
    sget-object v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method private playArrowAnimator(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 551
    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 555
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    .line 559
    .local v0, "arrowView":Lcom/android/incallui/view/ArrowImageView;
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Lcom/android/incallui/view/ArrowImageView;->playArrowMoveUpAnimator()V

    goto :goto_0
.end method

.method private playCallerInfoTranslateIn()V
    .locals 10

    .prologue
    const v9, 0x7f0a0001

    const/16 v6, 0x8

    const/4 v8, 0x2

    .line 636
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isCallInfoAnimFinished:Z

    .line 637
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mLabelAndNumber:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 644
    .local v3, "callerNameAlpha":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 646
    .local v4, "callerNameTranslate":Landroid/animation/ObjectAnimator;
    new-instance v5, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$5;

    invoke-direct {v5, p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$5;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 651
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mLabelAndNumber:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 656
    .local v1, "callerInfoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mLabelAndNumber:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 658
    .local v2, "callerInfoTranslate":Landroid/animation/ObjectAnimator;
    new-instance v5, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;

    invoke-direct {v5, p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 668
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 669
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 670
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x320

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 674
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 675
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0a0000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 676
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 677
    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 678
    return-void

    .line 643
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 644
    :array_1
    .array-data 4
        0x43480000    # 200.0f
        0x0
    .end array-data

    .line 654
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 656
    :array_3
    .array-data 4
        0x43480000    # 200.0f
        0x0
    .end array-data
.end method

.method private playMarkInfoAnimator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 696
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/incallui/AnimationUtils$Translation;->translationIn(Landroid/view/View;Landroid/util/Property;III)V

    .line 699
    return-void
.end method

.method private setMaxTransparent()V
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/CircleImageView;->setAlpha(F)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setMultiSimIndicator(IZ)V
    .locals 3
    .param p1, "simResId"    # I
    .param p2, "isConferenceCall"    # Z

    .prologue
    const/16 v2, 0x8

    .line 793
    if-eqz p2, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    .line 800
    .local v0, "tempSimCardInfo":Landroid/widget/ImageView;
    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 801
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    :goto_1
    return-void

    .line 797
    .end local v0    # "tempSimCardInfo":Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSimCardInfo:Landroid/widget/ImageView;

    .restart local v0    # "tempSimCardInfo":Landroid/widget/ImageView;
    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private stopCallerInfoTranslateIn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallerNameSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mLabelAndNumber:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePhoneNumberField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fullNumber"    # Ljava/lang/String;
    .param p2, "leftPostDialString"    # Ljava/lang/String;

    .prologue
    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lmiui/telephony/PhoneNumberUtils;->miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1017
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1018
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1021
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1022
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1025
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelArrowAnimator(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 565
    if-nez p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 569
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    .line 573
    .local v0, "arrowView":Lcom/android/incallui/view/ArrowImageView;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/android/incallui/view/ArrowImageView;->cancelAllAnimator()V

    goto :goto_0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->createPresenter()Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;-><init>()V

    return-object v0
.end method

.method public getTranslateInAnimatorSet(Lcom/android/incallui/view/CircleImageView;)Landroid/animation/ObjectAnimator;
    .locals 17
    .param p1, "view"    # Lcom/android/incallui/view/CircleImageView;

    .prologue
    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/view/CircleImageView;->getAnimatorImageHeight()I

    move-result v11

    .line 601
    .local v11, "maxHeight":I
    const/4 v2, 0x0

    .line 602
    .local v2, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2

    .line 603
    const/4 v2, 0x1

    .line 608
    :cond_0
    :goto_0
    const/4 v14, 0x0

    const v15, 0x438b8000    # 279.0f

    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 609
    .local v3, "kf0":Landroid/animation/Keyframe;
    const v14, 0x3e99999a    # 0.3f

    neg-int v15, v11

    int-to-float v15, v15

    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 610
    .local v4, "kf1":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f000000    # 0.5f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_3

    const/high16 v14, 0x40a00000    # 5.0f

    :goto_1
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 611
    .local v5, "kf2":Landroid/animation/Keyframe;
    const v15, 0x3f19999a    # 0.6f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_4

    const/high16 v14, -0x3fc00000    # -3.0f

    :goto_2
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 612
    .local v6, "kf3":Landroid/animation/Keyframe;
    const v15, 0x3f333333    # 0.7f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_5

    const/high16 v14, 0x40000000    # 2.0f

    :goto_3
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 613
    .local v7, "kf4":Landroid/animation/Keyframe;
    const v15, 0x3f4ccccd    # 0.8f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_6

    const/high16 v14, -0x40800000    # -1.0f

    :goto_4
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 614
    .local v8, "kf5":Landroid/animation/Keyframe;
    const v15, 0x3f666666    # 0.9f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    :goto_5
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 615
    .local v9, "kf6":Landroid/animation/Keyframe;
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 617
    .local v10, "kf7":Landroid/animation/Keyframe;
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v15, 0x8

    new-array v15, v15, [Landroid/animation/Keyframe;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    const/16 v16, 0x2

    aput-object v5, v15, v16

    const/16 v16, 0x3

    aput-object v6, v15, v16

    const/16 v16, 0x4

    aput-object v7, v15, v16

    const/16 v16, 0x5

    aput-object v8, v15, v16

    const/16 v16, 0x6

    aput-object v9, v15, v16

    const/16 v16, 0x7

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 619
    .local v12, "pvhHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x1

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 620
    .local v13, "translateY":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_8

    const-wide/16 v14, 0x640

    :goto_6
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 621
    new-instance v14, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$4;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;Lcom/android/incallui/view/CircleImageView;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_9

    .line 628
    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 632
    :cond_1
    :goto_7
    return-object v13

    .line 604
    .end local v3    # "kf0":Landroid/animation/Keyframe;
    .end local v4    # "kf1":Landroid/animation/Keyframe;
    .end local v5    # "kf2":Landroid/animation/Keyframe;
    .end local v6    # "kf3":Landroid/animation/Keyframe;
    .end local v7    # "kf4":Landroid/animation/Keyframe;
    .end local v8    # "kf5":Landroid/animation/Keyframe;
    .end local v9    # "kf6":Landroid/animation/Keyframe;
    .end local v10    # "kf7":Landroid/animation/Keyframe;
    .end local v12    # "pvhHolder":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 605
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 610
    .restart local v3    # "kf0":Landroid/animation/Keyframe;
    .restart local v4    # "kf1":Landroid/animation/Keyframe;
    :cond_3
    const/high16 v14, 0x40400000    # 3.0f

    goto/16 :goto_1

    .line 611
    .restart local v5    # "kf2":Landroid/animation/Keyframe;
    :cond_4
    const/high16 v14, -0x40000000    # -2.0f

    goto/16 :goto_2

    .line 612
    .restart local v6    # "kf3":Landroid/animation/Keyframe;
    :cond_5
    const/high16 v14, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 613
    .restart local v7    # "kf4":Landroid/animation/Keyframe;
    :cond_6
    const/high16 v14, -0x41000000    # -0.5f

    goto/16 :goto_4

    .line 614
    .restart local v8    # "kf5":Landroid/animation/Keyframe;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 620
    .restart local v9    # "kf6":Landroid/animation/Keyframe;
    .restart local v10    # "kf7":Landroid/animation/Keyframe;
    .restart local v12    # "pvhHolder":Landroid/animation/PropertyValuesHolder;
    .restart local v13    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_8
    const-wide/16 v14, 0x4b0

    goto :goto_6

    .line 629
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 630
    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_7
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getUi()Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 168
    return-object p0
.end method

.method public initAnswerOperLayout()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CircleImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    .line 279
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CircleImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    .line 280
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    .line 281
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method public onAnimatorPause()V
    .locals 0

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->pauseCircleBounceAnimator()V

    .line 543
    return-void
.end method

.method public onAnimatorResume()V
    .locals 0

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playCircleBounceAnimator()V

    .line 548
    return-void
.end method

.method public onAnswer(I)V
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->onAnswer(I)V

    .line 415
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 496
    :goto_0
    return-void

    .line 484
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    iget v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallType:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->onAnswer(I)V

    goto :goto_0

    .line 487
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->onDecline()V

    goto :goto_0

    .line 490
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->endCallClicked()V

    goto :goto_0

    .line 482
    :sswitch_data_0
    .sparse-switch
        0x7f090035 -> :sswitch_2
        0x7f09009f -> :sswitch_0
        0x7f0900a0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mContext:Landroid/content/Context;

    .line 175
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const v3, 0x7f030026

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    .line 185
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCountryIso:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 187
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 188
    .local v0, "height":I
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->getDisplayWindowSizeInSmartCover()Landroid/graphics/Rect;

    move-result-object v1

    .line 189
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, v2, v6

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    return-object v3
.end method

.method public onDecline()V
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->onDecline()V

    .line 419
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AnimatorObservable;->unRegisterListener(Lcom/android/incallui/OnAnimatorChanged;)V

    .line 287
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    .line 291
    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    .line 292
    iput-boolean v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isCallInfoAnimFinished:Z

    .line 293
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 294
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 461
    const-string v0, "onPanelCollapsed()"

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->log(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->onViewTouchUp(Landroid/view/View;)V

    .line 463
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 446
    const-string v1, "onPanelExpanded()"

    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->log(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setMaxTransparent()V

    .line 450
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v1, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->onDecline()V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v1, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "callType":I
    invoke-virtual {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->onAnswer(I)V

    goto :goto_0
.end method

.method public onPanelSlide(Landroid/view/View;FLandroid/view/View;)V
    .locals 6
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F
    .param p3, "currentDragView"    # Landroid/view/View;

    .prologue
    const v5, 0x3ec28f5c    # 0.38f

    .line 427
    cmpg-float v4, p2, v5

    if-ltz v4, :cond_0

    const v4, 0x3f2b851f    # 0.67f

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    .line 442
    :cond_0
    return-void

    .line 432
    :cond_1
    sub-float v4, p2, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 433
    .local v0, "diffOffset":F
    sget v4, Lcom/android/incallui/view/SlidingUpPanelLayout;->DIFF_SLIDE_OFFSET:F

    div-float v2, v0, v4

    .line 435
    .local v2, "percent":F
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 438
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_2

    if-ne v3, p3, :cond_2

    .line 439
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 436
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPanelViewCollapsedReleased(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 473
    const-string v0, "onPanelViewCollapsedReleased()"

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->log(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    :cond_0
    return-void
.end method

.method public onPanelViewExpandReleased(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 467
    const-string v0, "onPanelViewExpandReleased()"

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->log(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 268
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AnimatorObservable;->registerListener(Lcom/android/incallui/OnAnimatorChanged;)V

    .line 269
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    .line 198
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, v9}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, v8}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setOverlayed(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;)V

    .line 202
    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSimCardInfo:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceSimCardInfo:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f09000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0900d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mLabelAndNumber:Landroid/view/View;

    .line 207
    const v0, 0x7f0900e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardNumberSep:Landroid/view/View;

    .line 208
    const v0, 0x7f0900e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardTelocation:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0900ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f090033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0900f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mProviderInfo:Landroid/view/View;

    .line 212
    const v0, 0x7f0900f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mProviderLabel:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0900f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mProviderNumber:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0900e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSubscriptionId:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabelDivider:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f0900d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    .line 220
    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallMarkSep:Landroid/view/View;

    .line 221
    const v0, 0x7f0900f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallNumber:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0900df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    .line 223
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$2;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p0, v9}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->showConferenceControl(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    .line 236
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardMarkInfo:Landroid/widget/LinearLayout;

    .line 237
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallProviderInfo:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraInfo:Landroid/widget/LinearLayout;

    .line 241
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkTitle:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkCount:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkDivider:Landroid/widget/ImageView;

    .line 244
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkProvider:Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraDivider:Landroid/widget/ImageView;

    .line 248
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraTitle:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mEndBtn:Landroid/widget/Button;

    .line 251
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mEndBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0013

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 256
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0012

    invoke-direct {v6, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 257
    .local v6, "span1":Landroid/text/style/TextAppearanceSpan;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0018

    invoke-direct {v7, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 258
    .local v7, "span2":Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 262
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    .line 263
    return-void

    :cond_0
    move v0, v9

    .line 262
    goto :goto_0
.end method

.method public onViewMove(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlideOffset()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->cancelArrowAnimator(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewTouchDown(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "play"    # Z

    .prologue
    .line 500
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 501
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 502
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 504
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/view/CircleImageView;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 506
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/view/CircleImageView;>;"
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setSlidingView(Landroid/view/View;Z)V

    .line 511
    if-eqz p2, :cond_1

    .line 512
    invoke-direct {p0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playArrowAnimator(Landroid/view/View;)V

    .line 514
    :cond_1
    return-void
.end method

.method public onViewTouchUp(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/CircleImageView;->setAlpha(F)V

    .line 521
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v1, v3}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setSlidingView(Landroid/view/View;Z)V

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->cancelArrowAnimator(Landroid/view/View;)V

    .line 526
    return-void
.end method

.method public pauseCircleBounceAnimator()V
    .locals 6

    .prologue
    .line 715
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 716
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 717
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 718
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 719
    add-int/lit8 v2, v2, 0x1

    .line 721
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/incallui/view/CircleImageView;->getBounceAnimatorSet(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 722
    .local v0, "bounceAniSet":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 723
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 715
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "bounceAniSet":Landroid/animation/AnimatorSet;
    .end local v2    # "index":I
    .end local v3    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_3
    return-void
.end method

.method public playCircleBounceAnimator()V
    .locals 5

    .prologue
    .line 702
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 703
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 704
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 705
    .local v2, "index":I
    invoke-virtual {v3, v2}, Lcom/android/incallui/view/CircleImageView;->getBounceAnimatorSet(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 706
    .local v0, "bounceAniSet":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 707
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 702
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    goto :goto_1

    .line 712
    .end local v0    # "bounceAniSet":Landroid/animation/AnimatorSet;
    .end local v2    # "index":I
    .end local v3    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_2
    return-void
.end method

.method public playCircleTranslateInAnimator()V
    .locals 8

    .prologue
    .line 579
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 580
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    .local v1, "size":I
    new-array v2, v1, [Landroid/animation/ObjectAnimator;

    .line 582
    .local v2, "translateInY":[Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 583
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 584
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    invoke-virtual {p0, v3}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getTranslateInAnimatorSet(Lcom/android/incallui/view/CircleImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v0

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v3    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 588
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$3;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x320

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 596
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 597
    return-void
.end method

.method public setCallState(ILandroid/telecom/DisconnectCause;I)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "cause"    # Landroid/telecom/DisconnectCause;
    .param p3, "redialTimes"    # I

    .prologue
    const v7, 0x800005

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 911
    const/4 v0, 0x0

    .line 914
    .local v0, "callStateLabel":Ljava/lang/String;
    invoke-static {p1, p2, v3, p3}, Lcom/android/incallui/CallUtils;->getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;ZI)Ljava/lang/String;

    move-result-object v0

    .line 916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSingleCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0xa

    if-eq p1, v4, :cond_0

    const/16 v4, 0x9

    if-ne p1, v4, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 924
    .local v1, "skipAnimation":Z
    :goto_0
    const/4 v2, 0x0

    .line 925
    .local v2, "transition":Landroid/animation/LayoutTransition;
    if-eqz v1, :cond_1

    .line 931
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 932
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mProviderInfo:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 959
    if-eqz v1, :cond_3

    .line 962
    :cond_3
    return-void

    .end local v1    # "skipAnimation":Z
    .end local v2    # "transition":Landroid/animation/LayoutTransition;
    :cond_4
    move v1, v3

    .line 922
    goto :goto_0

    .line 935
    .restart local v1    # "skipAnimation":Z
    .restart local v2    # "transition":Landroid/animation/LayoutTransition;
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 943
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 944
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabel:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method public setPrimary(Lcom/android/incallui/model/CallCardInfo;ZZIZZ)V
    .locals 9
    .param p1, "callInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "conferenceCount"    # I
    .param p5, "isDialpadPressed"    # Z
    .param p6, "isVtConference"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 741
    if-eqz p6, :cond_4

    .line 742
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 743
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->isMtImsConference:Z

    if-eqz v2, :cond_2

    .line 744
    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 750
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->showConferenceControl(Z)V

    .line 778
    :cond_0
    :goto_1
    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    move-object v0, p0

    move v3, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setPrimaryName(Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 780
    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->updatePhoneNumberField(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setPrimaryTelocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->extraInfo:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->markCount:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->markProviderIcon:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    iget-object v7, p1, Lcom/android/incallui/model/CallCardInfo;->wordAd:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/android/incallui/model/CallCardInfo;->isCallTypeOutgoing:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setYellowPageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 789
    return-void

    .line 748
    :cond_1
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 752
    :cond_2
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    .line 753
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    .line 754
    iput-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 755
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 756
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 757
    invoke-virtual {p0, p4}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setPrimaryCallNum(I)V

    .line 758
    if-lez p4, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->showConferenceControl(Z)V

    .line 759
    iget v0, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setMultiSimIndicator(IZ)V

    goto :goto_1

    .line 762
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    .line 763
    :cond_5
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 764
    iput-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 765
    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 766
    if-nez p3, :cond_0

    .line 767
    invoke-virtual {p0, p4}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setPrimaryCallNum(I)V

    .line 768
    invoke-virtual {p0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->showConferenceControl(Z)V

    .line 769
    iget v0, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setMultiSimIndicator(IZ)V

    goto :goto_1

    .line 772
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->showConferenceControl(Z)V

    .line 773
    iget v1, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->setMultiSimIndicator(IZ)V

    goto :goto_1
.end method

.method public setPrimaryCallElapsedTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCallNum(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 809
    if-gtz p1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 812
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallMarkSep:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallNumber:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 817
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallMarkSep:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "isConference"    # Z

    .prologue
    .line 967
    if-eqz p2, :cond_0

    .line 968
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lmiui/telephony/PhoneNumberUtils;->miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 970
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 971
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    :goto_0
    return-void

    .line 973
    :cond_1
    if-eqz p3, :cond_2

    .line 974
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 975
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 977
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 979
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 980
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 981
    .local v1, "spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 982
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 983
    invoke-virtual {v1, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 984
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 986
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    .end local v1    # "spannable":Landroid/text/SpannableStringBuilder;
    :goto_1
    const/4 v0, 0x0

    .line 993
    .local v0, "nameDirection":I
    if-eqz p2, :cond_3

    .line 994
    const/4 v0, 0x3

    .line 996
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 988
    .end local v0    # "nameDirection":I
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1003
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    :goto_0
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryTelocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "telocation"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1031
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1035
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardTelocation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardNumberSep:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardTelocation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1043
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardNumberSep:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardTelocation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setSlidingView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canSliding"    # Z

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setTouchDragView(Landroid/view/View;Z)V

    .line 538
    return-void
.end method

.method public setYellowPageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 5
    .param p1, "extraInfo"    # Ljava/lang/String;
    .param p2, "markTitle"    # Ljava/lang/String;
    .param p3, "markCount"    # Ljava/lang/String;
    .param p4, "markProviderIcon"    # Landroid/graphics/Bitmap;
    .param p5, "company"    # Ljava/lang/String;
    .param p6, "incoming"    # Z
    .param p7, "wordAd"    # Ljava/lang/String;
    .param p8, "isCallTypeOutgoing"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 827
    iput-boolean v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    .line 828
    if-eqz p6, :cond_8

    .line 830
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 831
    iput-boolean v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    .line 832
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardMarkInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkCount:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 847
    :goto_0
    if-eqz p4, :cond_3

    .line 848
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkProvider:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 849
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkProvider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 860
    iput-boolean v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    .line 861
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardMarkInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallProviderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallProviderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 870
    iput-boolean v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    .line 871
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    :goto_4
    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isCallInfoAnimFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playMarkInfoAnimator()V

    .line 895
    :cond_1
    :goto_5
    return-void

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkCount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkCount:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 851
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkProvider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 852
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mMarkProvider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 855
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardMarkInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 865
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallProviderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 875
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 884
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardExtraDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 893
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardOptionalInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method public showAnswerUi(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 301
    if-eqz p1, :cond_2

    .line 302
    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isFirstShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isShowingAnswerUI:Z

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isShowingAnswerUI:Z

    .line 307
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getDefaultPanelHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 308
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingUpLayoutPaddingTop(I)V

    .line 309
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->collapsePanelManual()V

    .line 310
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playCallerInfoTranslateIn()V

    .line 312
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playCircleTranslateInAnimator()V

    .line 328
    :goto_1
    iput-boolean v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isFirstShow:Z

    goto :goto_0

    .line 314
    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isFirstShow:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isShowingAnswerUI:Z

    if-eqz v0, :cond_0

    .line 317
    :cond_3
    iput-boolean v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isShowingAnswerUI:Z

    .line 319
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingUpLayoutPaddingTop(I)V

    .line 320
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->expandPanelManual()V

    .line 322
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->stopCallerInfoTranslateIn()V

    .line 323
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->hideOperateItems()V

    .line 324
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public showConferenceControl(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCallCardConferenceManageButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1056
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallMarkSep:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mConferenceCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHangUpButton(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mEndBtn:Landroid/widget/Button;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 335
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mEndBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mEndBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTextButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 384
    if-eqz p1, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_2
    :goto_0
    return-void

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 403
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopCircleBounceAnimator()V
    .locals 3

    .prologue
    .line 729
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    .line 730
    .local v1, "view":Lcom/android/incallui/view/CircleImageView;
    invoke-virtual {v1}, Lcom/android/incallui/view/CircleImageView;->releaseBounceAnimatorSet()V

    goto :goto_0

    .line 732
    .end local v1    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 734
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 736
    :cond_1
    return-void
.end method
