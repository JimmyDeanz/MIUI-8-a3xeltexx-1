.class public Lcom/android/incallui/view/SlideUpLayout;
.super Lcom/android/incallui/view/AnswerLayout;
.source "SlideUpLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/OnAnimatorChanged;
.implements Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isTalkBackOn:Z

.field private isVideoCall:Z

.field private mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

.field private mAnswerImg:Lcom/android/incallui/view/CircleImageView;

.field private mAnswerOperView:Landroid/view/View;

.field private mAnswerText:Landroid/widget/TextView;

.field private mAnswerVoiceButton:Landroid/widget/Button;

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

.field private mCallerInfoItemHeight:I

.field private mCircleAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitMessageResponseImg:Landroid/widget/ImageView;

.field private mFadeInAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mFraudCallAnswerButton:Landroid/view/View;

.field private mFraudCallAnwserViews:Landroid/widget/LinearLayout;

.field private mFraudCallDeclineButton:Landroid/view/View;

.field protected mHandler:Landroid/os/Handler;

.field private mMessageArrow:Lcom/android/incallui/view/ArrowImageView;

.field private mMessageImg:Lcom/android/incallui/view/CircleImageView;

.field private mMessageLayout:Landroid/widget/LinearLayout;

.field private mMessageListView:Landroid/widget/ListView;

.field private mMessageResponseLayout:Landroid/widget/LinearLayout;

.field private mMessageText:Landroid/widget/TextView;

.field private mOperateLayout:Landroid/widget/FrameLayout;

.field private mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

.field private mRejectImg:Lcom/android/incallui/view/CircleImageView;

.field private mRejectText:Landroid/widget/TextView;

.field private mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

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

.field private mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
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
    .line 43
    const-class v0, Lcom/android/incallui/view/SlideUpLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/view/SlideUpLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/incallui/view/AnswerLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mCallerInfoItemHeight:I

    .line 261
    new-instance v0, Lcom/android/incallui/view/SlideUpLayout$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/view/SlideUpLayout$2;-><init>(Lcom/android/incallui/view/SlideUpLayout;)V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/view/AnswerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mCallerInfoItemHeight:I

    .line 261
    new-instance v0, Lcom/android/incallui/view/SlideUpLayout$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/view/SlideUpLayout$2;-><init>(Lcom/android/incallui/view/SlideUpLayout;)V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mHandler:Landroid/os/Handler;

    .line 100
    invoke-static {p1}, Lcom/android/incallui/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/view/SlideUpLayout;->isTalkBackOn:Z

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/view/SlideUpLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SlideUpLayout;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/incallui/view/SlideUpLayout;->dismissMessageResponse()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/view/SlideUpLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlideUpLayout;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/incallui/view/SlideUpLayout;->isVideoCall:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/view/SlideUpLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SlideUpLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SlideUpLayout;->showAnswerVoiceButton(Z)V

    return-void
.end method

.method private dismissMessageResponse()V
    .locals 3

    .prologue
    .line 543
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 544
    .local v0, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->blurCallCardOnIncomingMessageShow(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageResponseLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->resetAnswerUi()V

    .line 547
    return-void
.end method

.method private getDefaultPanelHeight()I
    .locals 5

    .prologue
    .line 493
    invoke-static {}, Landroid/content/res/MiuiConfiguration;->getScaleMode()I

    move-result v0

    .line 494
    .local v0, "currentScaleMode":I
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 495
    .local v1, "defaultPanelHeight":I
    packed-switch v0, :pswitch_data_0

    .line 511
    :goto_0
    :pswitch_0
    sget-object v2, Lcom/android/incallui/view/SlideUpLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultPanelHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return v1

    .line 497
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 498
    goto :goto_0

    .line 500
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 501
    goto :goto_0

    .line 504
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 505
    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 720
    sget-object v0, Lcom/android/incallui/view/SlideUpLayout;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method private playArrowAnimator(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 673
    if-nez p1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 677
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    .line 681
    .local v0, "arrowView":Lcom/android/incallui/view/ArrowImageView;
    if-eqz v0, :cond_2

    .line 682
    invoke-virtual {v0}, Lcom/android/incallui/view/ArrowImageView;->playArrowMoveUpAnimator()V

    .line 684
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/view/SlideUpLayout;->setCircleText(IZ)V

    goto :goto_0
.end method

.method private playMessageTranslateOut(Landroid/widget/ListView;Ljava/lang/Runnable;)V
    .locals 13
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 593
    invoke-virtual {p1, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 594
    .local v2, "childHeight":I
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 595
    .local v6, "num":I
    add-int/lit8 v5, v6, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 596
    invoke-virtual {p1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 597
    .local v0, "child":Landroid/view/View;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 598
    .local v3, "childSet":Landroid/animation/AnimatorSet;
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    fill-array-data v8, :array_0

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 599
    .local v1, "childAlpha":Landroid/animation/ObjectAnimator;
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v11, [F

    const/4 v9, 0x0

    aput v9, v8, v10

    int-to-float v9, v2

    aput v9, v8, v12

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 601
    .local v4, "childTranslate":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0a0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 602
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 603
    sub-int v7, v6, v5

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x32

    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 604
    if-nez v5, :cond_0

    .line 605
    new-instance v7, Lcom/android/incallui/view/SlideUpLayout$4;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/incallui/view/SlideUpLayout$4;-><init>(Lcom/android/incallui/view/SlideUpLayout;Ljava/lang/Runnable;Landroid/widget/ListView;)V

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    :cond_0
    new-array v7, v11, [Landroid/animation/Animator;

    aput-object v1, v7, v10

    aput-object v4, v7, v12

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 619
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 595
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 621
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childAlpha":Landroid/animation/ObjectAnimator;
    .end local v3    # "childSet":Landroid/animation/AnimatorSet;
    .end local v4    # "childTranslate":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 598
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setCircleText(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "isoffset"    # Z

    .prologue
    .line 567
    if-gez p1, :cond_0

    .line 582
    :goto_0
    return-void

    .line 571
    :cond_0
    if-eqz p2, :cond_1

    .line 572
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "textArray":[Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    .local v0, "circleText":Landroid/widget/TextView;
    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 575
    .end local v0    # "circleText":Landroid/widget/TextView;
    .end local v1    # "textArray":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "textArray":[Ljava/lang/String;
    goto :goto_1
.end method

.method private setMaxTransparent()V
    .locals 3

    .prologue
    .line 519
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

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

    .line 521
    .local v1, "item":Lcom/android/incallui/view/CircleImageView;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/CircleImageView;->setAlpha(F)V

    goto :goto_0

    .line 524
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/incallui/view/CircleImageView;
    :cond_0
    return-void
.end method

.method private setMessageTranslateLayoutAnimation()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFadeInAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFadeInAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mFadeInAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 590
    return-void
.end method

.method private showAnswerVoiceButton(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerVoiceButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 656
    :goto_1
    return-void

    .line 652
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 654
    :cond_1
    sget-object v0, Lcom/android/incallui/view/SlideUpLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAnswerVoiceButton is null ??, mAnswerOperView is what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelArrowAnimator(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 659
    if-nez p1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 663
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    .line 667
    .local v0, "arrowView":Lcom/android/incallui/view/ArrowImageView;
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Lcom/android/incallui/view/ArrowImageView;->cancelAllAnimator()V

    goto :goto_0
.end method

.method public clearAll()V
    .locals 4

    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

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

    .line 250
    .local v1, "view":Lcom/android/incallui/view/CircleImageView;
    invoke-virtual {v1}, Lcom/android/incallui/view/CircleImageView;->releaseBounceAnimatorSet()V

    goto :goto_0

    .line 252
    .end local v1    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 253
    .local v1, "view":Landroid/widget/ImageView;
    check-cast v1, Lcom/android/incallui/view/ArrowImageView;

    .end local v1    # "view":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/incallui/view/ArrowImageView;->cancelAllAnimator()V

    goto :goto_1

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    return-void
.end method

.method public configureMessageDialog(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v5, "textResponsesForDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/android/incallui/view/SlideUpLayout$1;

    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f030021

    const v4, 0x7f0900cb

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/view/SlideUpLayout$1;-><init>(Lcom/android/incallui/view/SlideUpLayout;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 196
    return-void
.end method

.method public onAnimatorPause()V
    .locals 0

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->pauseCircleBounceAnimator()V

    .line 410
    return-void
.end method

.method public onAnimatorResume()V
    .locals 0

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->playCircleBounceAnimator()V

    .line 418
    return-void
.end method

.method public onAnswer(I)V
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 285
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isIncomingFraudCall()Z

    move-result v0

    .line 286
    .local v0, "isIncomingFraudCall":Z
    if-eqz v0, :cond_1

    .line 287
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnwserViews:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnwserViews:Landroid/widget/LinearLayout;

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 289
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallDeclineButton:Landroid/view/View;

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 290
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnswerButton:Landroid/view/View;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    iput p1, p0, Lcom/android/incallui/view/SlideUpLayout;->mCallType:I

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnwserViews:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onAnswer(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 375
    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/incallui/view/SlideUpLayout$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/view/SlideUpLayout$3;-><init>(Lcom/android/incallui/view/SlideUpLayout;)V

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/view/SlideUpLayout;->playMessageTranslateOut(Landroid/widget/ListView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 383
    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onAnswer(I)V

    goto :goto_0

    .line 388
    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnwserViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    iget v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mCallType:I

    invoke-interface {v0, v1}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onAnswer(I)V

    goto :goto_0

    .line 394
    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnwserViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    invoke-interface {v0}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onReject()V

    goto :goto_0

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x7f090026 -> :sswitch_1
        0x7f090030 -> :sswitch_0
        0x7f09009f -> :sswitch_2
        0x7f0900a0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/incallui/view/AnswerLayout;->onFinishInflate()V

    .line 107
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    .line 108
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setOverlayed(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0, p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;)V

    .line 112
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerVoiceButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageLayout:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CircleImageView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageImg:Lcom/android/incallui/view/CircleImageView;

    .line 120
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CircleImageView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    .line 121
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/CircleImageView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    .line 123
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageArrow:Lcom/android/incallui/view/ArrowImageView;

    .line 124
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    .line 125
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/ArrowImageView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    .line 127
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    .line 129
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageListView:Landroid/widget/ListView;

    .line 130
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageResponseLayout:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mExitMessageResponseImg:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mExitMessageResponseImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnwserViews:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallDeclineButton:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerOperView:Landroid/view/View;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnswerButton:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallDeclineButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mFraudCallAnswerButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectText:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerText:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageText:Landroid/widget/TextView;

    .line 144
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mCallerInfoItemHeight:I

    .line 146
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 346
    const-string v0, "onPanelCollapsed()"

    invoke-direct {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->log(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/SlideUpLayout;->onViewTouchUp(Landroid/view/View;)V

    .line 348
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 1
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 331
    const-string v0, "onPanelExpanded()"

    invoke-direct {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->log(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/android/incallui/view/SlideUpLayout;->setMaxTransparent()V

    .line 335
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    invoke-interface {v0}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onReject()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v0, :cond_0

    .line 340
    iget-boolean v0, p0, Lcom/android/incallui/view/SlideUpLayout;->isVideoCall:Z

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->getCallType(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->onAnswer(I)V

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

    .line 306
    cmpg-float v4, p2, v5

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v6

    if-lez v4, :cond_2

    .line 308
    :cond_0
    cmpl-float v4, p2, v6

    if-lez v4, :cond_1

    .line 309
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/view/SlideUpLayout;->setCircleText(IZ)V

    .line 327
    :cond_1
    return-void

    .line 315
    :cond_2
    sub-float v4, p2, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 316
    .local v0, "diffOffset":F
    sget v4, Lcom/android/incallui/view/SlidingUpPanelLayout;->DIFF_SLIDE_OFFSET:F

    div-float v2, v0, v4

    .line 318
    .local v2, "percent":F
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/view/SlideUpLayout;->setCircleText(IZ)V

    .line 319
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 321
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 322
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_3

    if-ne v3, p3, :cond_3

    .line 323
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 320
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPanelViewCollapsedReleased(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 361
    const-string v0, "onPanelViewCollapsedReleased()"

    invoke-direct {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->log(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageResponseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/android/incallui/view/SlideUpLayout;->dismissMessageResponse()V

    .line 369
    :cond_0
    return-void
.end method

.method public onPanelViewExpandReleased(Landroid/view/View;)V
    .locals 2
    .param p1, "releaseView"    # Landroid/view/View;

    .prologue
    .line 352
    const-string v0, "onPanelViewExpandReleased()"

    invoke-direct {p0, v0}, Lcom/android/incallui/view/SlideUpLayout;->log(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->showMessageDialog()V

    .line 357
    :cond_0
    return-void
.end method

.method public onViewMove(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlideOffset()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/SlideUpLayout;->cancelArrowAnimator(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewTouchDown(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "play"    # Z

    .prologue
    .line 425
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 427
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 429
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/view/CircleImageView;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 431
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/view/CircleImageView;>;"
    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/view/SlideUpLayout;->isTalkBackOn:Z

    if-nez v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setTouchDragView(Landroid/view/View;Z)V

    .line 439
    :cond_1
    if-eqz p2, :cond_3

    .line 440
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    if-eqz v3, :cond_2

    .line 441
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v3}, Lcom/android/incallui/view/ArrowImageView;->cancelAllAnimator()V

    .line 443
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SlideUpLayout;->playArrowAnimator(Landroid/view/View;)V

    .line 445
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/incallui/view/SlideUpLayout;->showAnswerVoiceButton(Z)V

    .line 446
    return-void
.end method

.method public onViewTouchUp(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/CircleImageView;->setAlpha(F)V

    .line 457
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v1, v3}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 458
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setTouchDragView(Landroid/view/View;Z)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/SlideUpLayout;->cancelArrowAnimator(Landroid/view/View;)V

    .line 463
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v1, v4}, Lcom/android/incallui/view/ArrowImageView;->playArrowRepeatTranslateAnimator(Z)V

    .line 466
    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/view/SlideUpLayout;->isVideoCall:Z

    if-eqz v1, :cond_2

    .line 467
    invoke-direct {p0, v4}, Lcom/android/incallui/view/SlideUpLayout;->showAnswerVoiceButton(Z)V

    .line 469
    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/view/SlideUpLayout;->isTalkBackOn:Z

    if-eqz v1, :cond_3

    .line 470
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v1, :cond_4

    .line 471
    iget-boolean v1, p0, Lcom/android/incallui/view/SlideUpLayout;->isVideoCall:Z

    invoke-static {v1}, Lcom/android/incallui/CallAdapterUtils;->getCallType(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/view/SlideUpLayout;->onAnswer(I)V

    .line 482
    :cond_3
    :goto_1
    return-void

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    if-eqz v1, :cond_3

    .line 474
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    invoke-interface {v1}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onReject()V

    goto :goto_1

    .line 476
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageImg:Lcom/android/incallui/view/CircleImageView;

    if-ne p1, v1, :cond_3

    .line 477
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->expandPanel()Z

    .line 478
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->showMessageDialog()V

    goto :goto_1
.end method

.method public pauseCircleBounceAnimator()V
    .locals 6

    .prologue
    .line 688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 689
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 690
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 691
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 694
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/incallui/view/CircleImageView;->getBounceAnimatorSet(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 695
    .local v0, "bounceAniSet":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 696
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 688
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
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
    iget-boolean v3, p0, Lcom/android/incallui/view/SlideUpLayout;->isTalkBackOn:Z

    if-eqz v3, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 706
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/view/CircleImageView;

    .line 707
    .local v2, "view":Lcom/android/incallui/view/CircleImageView;
    invoke-virtual {v2, v1}, Lcom/android/incallui/view/CircleImageView;->getBounceAnimatorSet(I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 708
    .local v0, "bounceAniSet":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 709
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 705
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 710
    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 711
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    goto :goto_2

    .line 714
    .end local v0    # "bounceAniSet":Landroid/animation/AnimatorSet;
    .end local v2    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    if-eqz v3, :cond_0

    .line 715
    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/incallui/view/ArrowImageView;->playArrowRepeatTranslateAnimator(Z)V

    goto :goto_0
.end method

.method public playCircleTranslateInAnimator()V
    .locals 8

    .prologue
    .line 624
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 625
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 626
    .local v1, "size":I
    new-array v2, v1, [Landroid/animation/ObjectAnimator;

    .line 627
    .local v2, "translateInY":[Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 628
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/view/CircleImageView;

    .line 629
    .local v3, "view":Lcom/android/incallui/view/CircleImageView;
    invoke-virtual {v3, v0}, Lcom/android/incallui/view/CircleImageView;->getTranslateInAnimatorSet(I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    .end local v3    # "view":Lcom/android/incallui/view/CircleImageView;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 633
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/view/SlideUpLayout$5;

    invoke-direct {v5, p0}, Lcom/android/incallui/view/SlideUpLayout$5;-><init>(Lcom/android/incallui/view/SlideUpLayout;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 646
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x15e

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 647
    iget-object v4, p0, Lcom/android/incallui/view/SlideUpLayout;->mCircleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 648
    return-void
.end method

.method public resetAnswerUi()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 276
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageResponseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->resetDragState()V

    .line 279
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->collapsePanel()Z

    .line 280
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    :cond_0
    return-void
.end method

.method public setVideoCall(Z)V
    .locals 3
    .param p1, "isVideoCall"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/incallui/view/SlideUpLayout;->isVideoCall:Z

    .line 151
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f0200bc

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/view/CircleImageView;->setImageResource(I)V

    .line 154
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2

    const v0, 0x7f0c0074

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/view/CircleImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SlideUpLayout;->showAnswerVoiceButton(Z)V

    .line 159
    return-void

    .line 152
    :cond_1
    const v0, 0x7f0200bb

    goto :goto_0

    .line 154
    :cond_2
    const v0, 0x7f0c0073

    goto :goto_1
.end method

.method public showAnswerUi(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAnswerUi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/view/SlideUpLayout;->log(Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/AnimatorObservable;->registerListener(Lcom/android/incallui/OnAnimatorChanged;)V

    .line 167
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/android/incallui/view/SlideUpLayout;->getDefaultPanelHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 168
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getCurrentCallCount()I

    move-result v0

    .line 169
    .local v0, "callSize":I
    iget v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mCallerInfoItemHeight:I

    mul-int v1, v2, v0

    .line 170
    .local v1, "paddingTop":I
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v2, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingUpLayoutPaddingTop(I)V

    .line 171
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mSlidingUpLayout:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->collapsePanelManual()V

    .line 172
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->playCircleTranslateInAnimator()V

    .line 178
    .end local v0    # "callSize":I
    .end local v1    # "paddingTop":I
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mOperateLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 176
    invoke-static {}, Lcom/android/incallui/AnimatorObservable;->createInstacne()Lcom/android/incallui/AnimatorObservable;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/AnimatorObservable;->unRegisterListener(Lcom/android/incallui/OnAnimatorChanged;)V

    goto :goto_0
.end method

.method public showMessageDialog()V
    .locals 6

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    if-nez v2, :cond_0

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v1, "textResponsesForDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/incallui/view/SlideUpLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f030021

    const v5, 0x7f0900cb

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 534
    .end local v1    # "textResponsesForDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 535
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;

    invoke-direct {v3, p0}, Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/view/SlideUpLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 536
    invoke-direct {p0}, Lcom/android/incallui/view/SlideUpLayout;->setMessageTranslateLayoutAnimation()V

    .line 537
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageResponseLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 539
    .local v0, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->blurCallCardOnIncomingMessageShow(Z)V

    .line 540
    return-void
.end method

.method public showTextButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 200
    if-eqz p1, :cond_4

    .line 201
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    :goto_0
    return-void

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTranslateInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mBounceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerImg:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mArrowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerArrow:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mRejectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout;->mTextList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout;->mAnswerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
