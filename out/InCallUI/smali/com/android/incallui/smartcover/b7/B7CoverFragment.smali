.class public Lcom/android/incallui/smartcover/b7/B7CoverFragment;
.super Lcom/android/incallui/BaseFragment;
.source "B7CoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/OnAnimatorChanged;
.implements Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;
.implements Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/smartcover/b7/B7CoverPresenter;",
        "Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/incallui/OnAnimatorChanged;",
        "Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;",
        "Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFirstShow:Z

.field private isShowingAnswerUI:Z

.field private mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

.field private mAnswerImg:Lcom/android/incallui/view/CircleImageView;

.field private mAnswerOperView:Landroid/view/View;

.field private mAnswerText:Landroid/widget/TextView;

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

.field private mCallType:I

.field private mCircleAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCircleImageAnswerHeight:I

.field private mCircleImageRejectHeight:I

.field private mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mDefaultPanelHeight:I

.field private mElapsedTime:Landroid/widget/TextView;

.field private mEndBtn:Landroid/widget/Button;

.field protected mHandler:Landroid/os/Handler;

.field private mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mOperateLayout:Landroid/widget/LinearLayout;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

.field private mRejectImg:Lcom/android/incallui/view/CircleImageView;

.field private mRejectText:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

.field private mTelocation:Landroid/widget/TextView;

.field private mTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

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
    .line 57
    const-class v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTranslateInList:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mArrowList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTextList:Ljava/util/ArrayList;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mDefaultPanelHeight:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isShowingAnswerUI:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isFirstShow:Z

    .line 116
    new-instance v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment$1;-><init>(Lcom/android/incallui/smartcover/b7/B7CoverFragment;)V

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method private getDefaultPanelHeight()I
    .locals 3

    .prologue
    .line 263
    iget v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mDefaultPanelHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mDefaultPanelHeight:I

    .line 266
    invoke-static {}, Landroid/content/res/MiuiConfiguration;->getScaleMode()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 267
    iget v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mDefaultPanelHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mDefaultPanelHeight:I

    .line 271
    :cond_0
    iget v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mDefaultPanelHeight:I

    return v0
.end method

.method private hideOperateItems()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 275
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->stopCircleBounceAnimator()V

    .line 277
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setMaxTransparent()V

    .line 279
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 739
    sget-object v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method private playArrowAnimator(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 477
    if-nez p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 481
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    .line 485
    .local v0, "arrowView":Lcom/android/incallui/view/ArrowImageView;
    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {v0}, Lcom/android/incallui/view/ArrowImageView;->playArrowMoveUpAnimator()V

    .line 488
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setCircleText(IZ)V

    goto :goto_0
.end method

.method private setCircleText(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "isoffset"    # Z

    .prologue
    .line 605
    if-gez p1, :cond_0

    .line 620
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v1, 0x0

    .line 609
    .local v1, "textArray":[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 617
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 618
    .local v0, "circleText":Landroid/widget/TextView;
    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 613
    .end local v0    # "circleText":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private setMaxTransparent()V
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/CircleImageView;->setAlpha(F)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updatePhoneNumberField(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fullNumber"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 716
    if-eqz p2, :cond_0

    .line 717
    const-string p1, ""

    .line 719
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lmiui/telephony/PhoneNumberUtils;->miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 722
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 723
    return-void
.end method


# virtual methods
.method public cancelArrowAnimator(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 492
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 496
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    .line 500
    .local v0, "arrowView":Lcom/android/incallui/view/ArrowImageView;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/android/incallui/view/ArrowImageView;->cancelAllAnimator()V

    goto :goto_0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->createPresenter()Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/smartcover/b7/B7CoverPresenter;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    invoke-direct {v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;-><init>()V

    return-object v0
.end method

.method public getTranslateInAnimatorSet(Lcom/android/incallui/view/CircleImageView;)Landroid/animation/ObjectAnimator;
    .locals 17
    .param p1, "view"    # Lcom/android/incallui/view/CircleImageView;

    .prologue
    .line 527
    const/4 v11, 0x0

    .line 528
    .local v11, "maxHeight":I
    const/4 v2, 0x0

    .line 529
    .local v2, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2

    .line 530
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleImageAnswerHeight:I

    .line 531
    const/4 v2, 0x1

    .line 537
    :cond_0
    :goto_0
    const/4 v14, 0x0

    const v15, 0x438b8000    # 279.0f

    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 538
    .local v3, "kf0":Landroid/animation/Keyframe;
    const v14, 0x3e99999a    # 0.3f

    neg-int v15, v11

    int-to-float v15, v15

    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 539
    .local v4, "kf1":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f000000    # 0.5f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_3

    const/high16 v14, 0x40a00000    # 5.0f

    :goto_1
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 540
    .local v5, "kf2":Landroid/animation/Keyframe;
    const v15, 0x3f19999a    # 0.6f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_4

    const/high16 v14, -0x3fc00000    # -3.0f

    :goto_2
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 541
    .local v6, "kf3":Landroid/animation/Keyframe;
    const v15, 0x3f333333    # 0.7f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_5

    const/high16 v14, 0x40000000    # 2.0f

    :goto_3
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 542
    .local v7, "kf4":Landroid/animation/Keyframe;
    const v15, 0x3f4ccccd    # 0.8f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_6

    const/high16 v14, -0x40800000    # -1.0f

    :goto_4
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 543
    .local v8, "kf5":Landroid/animation/Keyframe;
    const v15, 0x3f666666    # 0.9f

    rem-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    :goto_5
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 544
    .local v9, "kf6":Landroid/animation/Keyframe;
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 546
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

    .line 548
    .local v12, "pvhHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x1

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 549
    .local v13, "translateY":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_8

    const-wide/16 v14, 0x640

    :goto_6
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 550
    new-instance v14, Lcom/android/incallui/smartcover/b7/B7CoverFragment$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment$3;-><init>(Lcom/android/incallui/smartcover/b7/B7CoverFragment;Lcom/android/incallui/view/CircleImageView;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_9

    .line 557
    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 561
    :cond_1
    :goto_7
    return-object v13

    .line 532
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

    iget-object v14, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleImageRejectHeight:I

    .line 534
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 539
    .restart local v3    # "kf0":Landroid/animation/Keyframe;
    .restart local v4    # "kf1":Landroid/animation/Keyframe;
    :cond_3
    const/high16 v14, 0x40400000    # 3.0f

    goto/16 :goto_1

    .line 540
    .restart local v5    # "kf2":Landroid/animation/Keyframe;
    :cond_4
    const/high16 v14, -0x40000000    # -2.0f

    goto/16 :goto_2

    .line 541
    .restart local v6    # "kf3":Landroid/animation/Keyframe;
    :cond_5
    const/high16 v14, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 542
    .restart local v7    # "kf4":Landroid/animation/Keyframe;
    :cond_6
    const/high16 v14, -0x41000000    # -0.5f

    goto/16 :goto_4

    .line 543
    .restart local v8    # "kf5":Landroid/animation/Keyframe;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 549
    .restart local v9    # "kf6":Landroid/animation/Keyframe;
    .restart local v10    # "kf7":Landroid/animation/Keyframe;
    .restart local v12    # "pvhHolder":Landroid/animation/PropertyValuesHolder;
    .restart local v13    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_8
    const-wide/16 v14, 0x4b0

    goto :goto_6

    .line 558
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 559
    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_7
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getUi()Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 139
    return-object p0
.end method

.method public initAnswerOperLayout()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CircleImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    .line 203
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CircleImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    .line 204
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    .line 205
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    .line 207
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectText:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerText:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public onAnimatorPause()V
    .locals 0

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->pauseCircleBounceAnimator()V

    .line 469
    return-void
.end method

.method public onAnimatorResume()V
    .locals 0

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->playCircleBounceAnimator()V

    .line 474
    return-void
.end method

.method public onAnswer(I)V
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->onAnswer(I)V

    .line 330
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 403
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    iget v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCallType:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->onAnswer(I)V

    goto :goto_0

    .line 406
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->onDecline()V

    goto :goto_0

    .line 409
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->endCallClicked()V

    goto :goto_0

    .line 401
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
    .line 144
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    .line 156
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCountryIso:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 159
    .local v0, "height":I
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->getDisplayWindowSizeInSmartCover()Landroid/graphics/Rect;

    move-result-object v1

    .line 160
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, v2, v6

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 161
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleImageAnswerHeight:I

    .line 163
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleImageRejectHeight:I

    .line 165
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    return-object v3
.end method

.method public onDecline()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->onDecline()V

    .line 334
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AnimatorObservable;->unRegisterListener(Lcom/android/incallui/OnAnimatorChanged;)V

    .line 214
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    .line 218
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 219
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 380
    const-string v0, "onPanelCollapsed()"

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->onViewTouchUp(Landroid/view/View;)V

    .line 382
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 365
    const-string v1, "onPanelExpanded()"

    invoke-direct {p0, v1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->log(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setMaxTransparent()V

    .line 369
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->onDecline()V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v1, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "callType":I
    invoke-virtual {p0, v0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->onAnswer(I)V

    goto :goto_0
.end method

.method public onPanelSlide(Landroid/view/View;FLandroid/view/View;)V
    .locals 7
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F
    .param p3, "currentDragView"    # Landroid/view/View;

    .prologue
    const v6, 0x3f2b851f    # 0.67f

    const v5, 0x3ec28f5c    # 0.38f

    .line 342
    cmpg-float v4, p2, v5

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v6

    if-lez v4, :cond_2

    .line 344
    :cond_0
    cmpl-float v4, p2, v6

    if-lez v4, :cond_1

    .line 345
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setCircleText(IZ)V

    .line 361
    :cond_1
    return-void

    .line 350
    :cond_2
    sub-float v4, p2, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 351
    .local v0, "diffOffset":F
    sget v4, Lcom/android/incallui/view/SlidingUpPanelLayout;->DIFF_SLIDE_OFFSET:F

    div-float v2, v0, v4

    .line 353
    .local v2, "percent":F
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setCircleText(IZ)V

    .line 354
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 357
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_3

    if-ne v3, p3, :cond_3

    .line 358
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 355
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPanelViewCollapsedReleased(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 392
    const-string v0, "onPanelViewCollapsedReleased()"

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->log(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    :cond_0
    return-void
.end method

.method public onPanelViewExpandReleased(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 386
    const-string v0, "onPanelViewExpandReleased()"

    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->log(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 192
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AnimatorObservable;->registerListener(Lcom/android/incallui/OnAnimatorChanged;)V

    .line 193
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    .line 173
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setOverlayed(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;)V

    .line 177
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f09000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTelocation:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f090033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mEndBtn:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mEndBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0013

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 187
    return-void
.end method

.method public onViewMove(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlideOffset()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->cancelArrowAnimator(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewTouchDown(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "play"    # Z

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 421
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 422
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 423
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/view/CircleImageView;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 425
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/view/CircleImageView;>;"
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setSlidingView(Landroid/view/View;Z)V

    .line 430
    if-eqz p2, :cond_2

    .line 431
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    if-eqz v3, :cond_1

    .line 432
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v3}, Lcom/android/incallui/view/ArrowImageView;->cancelAllAnimator()V

    .line 434
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->playArrowAnimator(Landroid/view/View;)V

    .line 436
    :cond_2
    return-void
.end method

.method public onViewTouchUp(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 440
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/CircleImageView;->setAlpha(F)V

    .line 443
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v1, v3}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setSlidingView(Landroid/view/View;Z)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->cancelArrowAnimator(Landroid/view/View;)V

    .line 449
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/ArrowImageView;->playArrowRepeatTranslateAnimator(Z)V

    .line 452
    :cond_1
    return-void
.end method

.method public pauseCircleBounceAnimator()V
    .locals 6

    .prologue
    .line 581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 582
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 583
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 584
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 585
    add-int/lit8 v2, v2, 0x1

    .line 587
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/incallui/view/CircleImageView;->getBounceAnimatorSet(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 588
    .local v0, "bounceAniSet":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 589
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 581
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "bounceAniSet":Landroid/animation/AnimatorSet;
    .end local v2    # "index":I
    .end local v3    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_3
    return-void
.end method

.method public playCircleBounceAnimator()V
    .locals 6

    .prologue
    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 566
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 567
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 568
    .local v2, "index":I
    invoke-virtual {v3, v2}, Lcom/android/incallui/view/CircleImageView;->getBounceAnimatorSet(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 569
    .local v0, "bounceAniSet":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 570
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 565
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    goto :goto_1

    .line 575
    .end local v0    # "bounceAniSet":Landroid/animation/AnimatorSet;
    .end local v2    # "index":I
    .end local v3    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    if-eqz v4, :cond_3

    .line 576
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/view/ArrowImageView;->playArrowRepeatTranslateAnimator(Z)V

    .line 578
    :cond_3
    return-void
.end method

.method public playCircleTranslateInAnimator()V
    .locals 8

    .prologue
    .line 506
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 507
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 508
    .local v1, "size":I
    new-array v2, v1, [Landroid/animation/ObjectAnimator;

    .line 509
    .local v2, "translateInY":[Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 510
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 511
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    invoke-virtual {p0, v3}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getTranslateInAnimatorSet(Lcom/android/incallui/view/CircleImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v3    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 515
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/smartcover/b7/B7CoverFragment$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment$2;-><init>(Lcom/android/incallui/smartcover/b7/B7CoverFragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 522
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 523
    iget-object v4, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 524
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/model/CallCardInfo;ZZZZ)V
    .locals 5
    .param p1, "callInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "isDialpadPressed"    # Z
    .param p5, "isVtConference"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 625
    if-eqz p5, :cond_3

    .line 626
    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 627
    iget-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->isMtImsConference:Z

    if-eqz v0, :cond_2

    .line 628
    iget-boolean v0, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 649
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p4, v2}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setPrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 651
    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->updatePhoneNumberField(Ljava/lang/String;Z)V

    .line 653
    iget-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->setPrimaryTelocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void

    .line 632
    :cond_1
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 635
    :cond_2
    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    .line 636
    iput-boolean v4, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 637
    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 638
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 641
    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_0

    .line 642
    :cond_4
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 643
    iput-boolean v4, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 644
    iput-object v1, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 670
    if-eqz p2, :cond_0

    .line 671
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lmiui/telephony/PhoneNumberUtils;->miuiFormatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 673
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :goto_0
    return-void

    .line 676
    :cond_1
    if-eqz p3, :cond_2

    .line 677
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 678
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 680
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 682
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 683
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 684
    .local v1, "spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 685
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 686
    invoke-virtual {v1, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 687
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 689
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    .end local v1    # "spannable":Landroid/text/SpannableStringBuilder;
    :goto_1
    const/4 v0, 0x0

    .line 696
    .local v0, "nameDirection":I
    if-eqz p2, :cond_3

    .line 697
    const/4 v0, 0x3

    .line 699
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 691
    .end local v0    # "nameDirection":I
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryTelocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telocation"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 726
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 730
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTelocation:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTelocation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTelocation:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setSlidingView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canSliding"    # Z

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setTouchDragView(Landroid/view/View;Z)V

    .line 464
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 223
    if-eqz p1, :cond_2

    .line 224
    iget-boolean v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isFirstShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isShowingAnswerUI:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isShowingAnswerUI:Z

    .line 229
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->getDefaultPanelHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 230
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingUpLayoutPaddingTop(I)V

    .line 231
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->collapsePanelManual()V

    .line 232
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mOperateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->playCircleTranslateInAnimator()V

    .line 249
    :goto_1
    iput-boolean v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isFirstShow:Z

    goto :goto_0

    .line 235
    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isFirstShow:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isShowingAnswerUI:Z

    if-eqz v0, :cond_0

    .line 238
    :cond_3
    iput-boolean v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->isShowingAnswerUI:Z

    .line 240
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingUpLayoutPaddingTop(I)V

    .line 241
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->expandPanelManual()V

    .line 243
    invoke-direct {p0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->hideOperateItems()V

    .line 244
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public showHangUpButton(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mEndBtn:Landroid/widget/Button;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 256
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mEndBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mEndBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTelocation(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTelocation:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    return-void

    .line 325
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTextButton()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTextList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mRejectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mTextList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mAnswerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3
    return-void
.end method

.method public stopCircleBounceAnimator()V
    .locals 3

    .prologue
    .line 595
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mBounceList:Ljava/util/ArrayList;

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

    .line 596
    .local v1, "view":Lcom/android/incallui/view/CircleImageView;
    invoke-virtual {v1}, Lcom/android/incallui/view/CircleImageView;->releaseBounceAnimatorSet()V

    goto :goto_0

    .line 598
    .end local v1    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 600
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 602
    :cond_1
    return-void
.end method
