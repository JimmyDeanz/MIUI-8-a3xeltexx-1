.class public Lcom/android/incallui/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;"
    }
.end annotation


# instance fields
.field private isCallButtonVisible:Z

.field private isInternationalVersion:Z

.field private mAlertDialog:Lmiui/app/AlertDialog;

.field private mAudioButton:Landroid/widget/TextView;

.field private mAudioButtonLayout:Landroid/view/View;

.field private mAudioButtonTextColorNormal:I

.field private mAudioButtonTextColorSelect:I

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mEndCallButton:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

.field private mMutiAudioImage:Landroid/widget/ImageView;

.field private mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mReducedCallButtonPaddingBottom:I

.field private mToolButton:Landroid/widget/TextView;

.field private mToolsButtonLayout:Landroid/view/View;

.field private mVideoCallButtonPaddingBottom:I

.field private mVoiceCallButtonPaddingBottom:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isInternationalVersion:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/android/incallui/CallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragment$1;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    .line 187
    new-instance v0, Lcom/android/incallui/CallButtonFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragment$2;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/InCallActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallButtonFragment;ZZ[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallButtonFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/CallButtonFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->startCallButtonAnimator(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/CallButtonFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallButtonFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/JeejenInCallScreenLayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    return-object v0
.end method

.method private closeDialpad()V
    .locals 2

    .prologue
    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->handleToolPadButton(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    .line 440
    return-void
.end method

.method private closeToolpad()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->handleToolPadButton(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->displayToolPanel(Z)V

    .line 445
    return-void
.end method

.method private getAudioNameArray()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 544
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v1

    .line 545
    .local v1, "headsetSupported":Z
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 546
    .local v0, "entries":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f0c0030

    invoke-virtual {p0, v3}, Lcom/android/incallui/CallButtonFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 547
    if-eqz v1, :cond_0

    .line 548
    const v2, 0x7f0c0033

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallButtonFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 552
    :goto_0
    const/4 v2, 0x2

    const v3, 0x7f0c0034

    invoke-virtual {p0, v3}, Lcom/android/incallui/CallButtonFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 553
    return-object v0

    .line 550
    :cond_0
    const v2, 0x7f0c0032

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallButtonFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method private getCurrentAudioIndex()I
    .locals 2

    .prologue
    .line 532
    const/4 v0, -0x1

    .line 533
    .local v0, "selectAudio":I
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    const/4 v0, 0x0

    .line 540
    :cond_0
    :goto_0
    return v0

    .line 535
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    const/4 v0, 0x2

    goto :goto_0

    .line 537
    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToolPadButton(Z)V
    .locals 3
    .param p1, "isShowCallTool"    # Z

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isInternationalVersion:Z

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f02003d

    :goto_0
    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 464
    :goto_1
    return-void

    .line 453
    :cond_0
    const v0, 0x7f02003e

    goto :goto_0

    .line 456
    :cond_1
    if-eqz p1, :cond_2

    .line 457
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    const v1, 0x7f0c00da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    const v1, 0x7f0c00d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 461
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAudioSelectDialog()V
    .locals 4

    .prologue
    .line 467
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    .local v1, "builder":Lmiui/app/AlertDialog$Builder;
    const v2, 0x7f0c00db

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 469
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->getCurrentAudioIndex()I

    move-result v0

    .line 470
    .local v0, "audioSelectIndex":I
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->getAudioNameArray()[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/CallButtonFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/CallButtonFragment$6;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 507
    const v2, 0x7f0c007d

    new-instance v3, Lcom/android/incallui/CallButtonFragment$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/CallButtonFragment$7;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 513
    new-instance v2, Lcom/android/incallui/CallButtonFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$8;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 519
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mAlertDialog:Lmiui/app/AlertDialog;

    .line 520
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    .line 521
    return-void
.end method

.method private startCallButtonAnimator(Z)V
    .locals 11
    .param p1, "isIn"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 557
    if-eqz p1, :cond_0

    .line 558
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 559
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 560
    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 563
    .local v2, "endButtonAlpha":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 565
    .local v3, "endButtonScaleX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 567
    .local v4, "endButtonScaleY":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 569
    .local v1, "audioButtonAlpha":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 571
    .local v5, "toolBttonAlpha":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    aput-object v4, v6, v9

    const/4 v7, 0x3

    aput-object v1, v6, v7

    aput-object v5, v6, v10

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 574
    new-instance v6, Lcom/android/incallui/CallButtonFragment$9;

    invoke-direct {v6, p0}, Lcom/android/incallui/CallButtonFragment$9;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 599
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 606
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "audioButtonAlpha":Landroid/animation/ObjectAnimator;
    .end local v2    # "endButtonAlpha":Landroid/animation/ObjectAnimator;
    .end local v3    # "endButtonScaleX":Landroid/animation/ObjectAnimator;
    .end local v4    # "endButtonScaleY":Landroid/animation/ObjectAnimator;
    .end local v5    # "toolBttonAlpha":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->closeAllPanel()V

    goto :goto_0

    .line 561
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 563
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 565
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 567
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 569
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private varargs videoCallStateRecord(ZZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "hasConferenceDiff"    # Z
    .param p2, "hasVideoDiff"    # Z
    .param p3, "keys"    # [Ljava/lang/String;

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isVtConferenceCall()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isVideoCall()Z

    move-result v0

    invoke-static {p1, p2, v1, v0, p3}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordVideoCallCountEvent(ZZZZ[Ljava/lang/String;)V

    .line 625
    return-void
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAlertDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAlertDialog:Lmiui/app/AlertDialog;

    .line 528
    :cond_0
    return-void
.end method

.method public changeContentViewPaddingBottom(Z)V
    .locals 3
    .param p1, "isVideo"    # Z

    .prologue
    const/4 v2, 0x0

    .line 419
    invoke-static {}, Lcom/android/incallui/util/Utils;->isReducedCallButtonPaddingBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContentView:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/incallui/CallButtonFragment;->mReducedCallButtonPaddingBottom:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContentView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/incallui/CallButtonFragment;->mVideoCallButtonPaddingBottom:I

    :goto_1
    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceCallButtonPaddingBottom:I

    goto :goto_1
.end method

.method protected createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(Z)V
    .locals 6
    .param p1, "value"    # Z

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->handleToolPadButton(Z)V

    .line 269
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isToolPanelVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getToolPanelHideTime()I

    move-result v0

    .line 271
    .local v0, "delay":I
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->closeToolpad()V

    .line 272
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/CallButtonFragment$5;-><init>(Lcom/android/incallui/CallButtonFragment;Z)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 268
    .end local v0    # "delay":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    goto :goto_0
.end method

.method public displayToolPanel(Z)V
    .locals 6
    .param p1, "value"    # Z

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isToolPanelVisible()Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->handleToolPadButton(Z)V

    .line 246
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getDialpadHideTime()I

    move-result v0

    .line 248
    .local v0, "delay":I
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->closeDialpad()V

    .line 249
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/CallButtonFragment$4;-><init>(Lcom/android/incallui/CallButtonFragment;Z)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 259
    .end local v0    # "delay":I
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallActivity;->displayToolPanel(Z)V

    goto :goto_0
.end method

.method protected getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    .prologue
    .line 80
    return-object p0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public isCallButtonVisible()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    return v0
.end method

.method public jeejenEndCall()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 619
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-static {}, Lcom/android/incallui/CallUtils;->isConferenceModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public onAudioButtonClick()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 369
    invoke-direct {p0, v9}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    .line 370
    .local v0, "bluetoothSupported":Z
    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioSelectDialog()V

    .line 387
    :goto_0
    return-void

    .line 374
    :cond_0
    new-array v1, v9, [I

    .line 375
    .local v1, "position":[I
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 376
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    aget v6, v1, v4

    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aget v7, v1, v3

    iget-object v8, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/incallui/InCallActivity;->playAudioButtonClickAnim(ZII)V

    .line 379
    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "video_call_conference_speaker"

    aput-object v5, v2, v4

    const-string v4, "video_call_speaker"

    aput-object v4, v2, v3

    const-string v4, "video_call_voice_speaker"

    aput-object v4, v2, v9

    invoke-direct {p0, v3, v3, v2}, Lcom/android/incallui/CallButtonFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->onSpeakerClick()V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 376
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 142
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    .line 144
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public onToolButtonClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 393
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isToolPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonFragment;->displayToolPanel(Z)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f090036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContentView:Landroid/widget/RelativeLayout;

    .line 99
    const v1, 0x7f090037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    .line 100
    const v1, 0x7f090039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f090038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    .line 102
    const v1, 0x7f09003b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    .line 103
    const v1, 0x7f09003c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f09003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMutiAudioImage:Landroid/widget/ImageView;

    .line 105
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonTextColorNormal:I

    .line 107
    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonTextColorSelect:I

    .line 108
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceCallButtonPaddingBottom:I

    .line 110
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->mVideoCallButtonPaddingBottom:I

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->mReducedCallButtonPaddingBottom:I

    .line 114
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolButton:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    return-void
.end method

.method public setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V
    .locals 2
    .param p1, "layer"    # Lcom/android/incallui/JeejenInCallScreenLayer;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 613
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V

    .line 614
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    if-eqz p1, :cond_3

    .line 211
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    if-nez v0, :cond_0

    .line 212
    iput-boolean v2, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isVtConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$3;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenInCallScreenLayer;->showInCallControlsWidget(Z)V

    .line 234
    :cond_1
    return-void

    .line 220
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->startCallButtonAnimator(Z)V

    goto :goto_0

    .line 224
    :cond_3
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    if-eqz v0, :cond_0

    .line 225
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    .line 226
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->startCallButtonAnimator(Z)V

    goto :goto_0
.end method

.method public setVisibleFullScreenVideo(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->startCallButtonAnimator(Z)V

    .line 205
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonFragment;->isCallButtonVisible:Z

    .line 206
    return-void

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v1, v2

    .line 205
    goto :goto_1
.end method

.method public showAudioButtonLayout(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 430
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showToolsButtonLayout(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 435
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public startEndCallButtonAnimator(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lcom/android/incallui/AnimationUtils;->startRotationAnimator(Landroid/view/View;II)V

    .line 415
    return-void
.end method

.method public updateAudioMode(I)V
    .locals 11
    .param p1, "mode"    # I

    .prologue
    const v5, 0x7f02004b

    const/4 v10, 0x2

    const/16 v7, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 289
    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v3

    .line 290
    .local v3, "bluetoothSupported":Z
    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v4

    .line 292
    .local v4, "speakerSupported":Z
    const/4 v0, 0x0

    .line 293
    .local v0, "audioModeBluetoothOn":Z
    const/4 v1, 0x0

    .line 294
    .local v1, "audioModeHeadsetOn":Z
    const/4 v2, 0x0

    .line 296
    .local v2, "audioModeSpeakerOn":Z
    if-eqz v3, :cond_3

    .line 297
    const-string v6, "updateAudioButton - popup menu mode"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    const/4 v0, 0x1

    .line 318
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 319
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mMutiAudioImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonTextColorSelect:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    if-eqz v0, :cond_6

    .line 322
    iget-boolean v5, p0, Lcom/android/incallui/CallButtonFragment;->isInternationalVersion:Z

    if-eqz v5, :cond_5

    .line 323
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f020039

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 363
    :goto_1
    return-void

    .line 301
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    const/4 v2, 0x1

    goto :goto_0

    .line 303
    :cond_2
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    const/4 v1, 0x1

    goto :goto_0

    .line 308
    :cond_3
    if-eqz v4, :cond_4

    .line 309
    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    goto :goto_0

    .line 311
    :cond_4
    const-string v6, "updateAudioButton - disabled..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x0

    .line 314
    const/4 v1, 0x0

    .line 315
    const/4 v2, 0x0

    goto :goto_0

    .line 326
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f0c0030

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 328
    :cond_6
    if-eqz v1, :cond_8

    .line 329
    iget-boolean v5, p0, Lcom/android/incallui/CallButtonFragment;->isInternationalVersion:Z

    if-eqz v5, :cond_7

    .line 330
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f020045

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 333
    :cond_7
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f0c0033

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 335
    :cond_8
    if-eqz v2, :cond_a

    .line 336
    iget-boolean v6, p0, Lcom/android/incallui/CallButtonFragment;->isInternationalVersion:Z

    if-eqz v6, :cond_9

    .line 337
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 340
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f0c0034

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 343
    :cond_a
    iget-boolean v5, p0, Lcom/android/incallui/CallButtonFragment;->isInternationalVersion:Z

    if-eqz v5, :cond_b

    .line 344
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f020042

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 347
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f0c0032

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 351
    :cond_c
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mMutiAudioImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-boolean v6, p0, Lcom/android/incallui/CallButtonFragment;->isInternationalVersion:Z

    if-eqz v6, :cond_e

    .line 353
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    :goto_2
    invoke-virtual {v6, v8, v8, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    :cond_d
    const v5, 0x7f020048

    goto :goto_2

    .line 357
    :cond_e
    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    const v6, 0x7f0c0034

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 358
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/TextView;

    if-eqz v2, :cond_f

    iget v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonTextColorSelect:I

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_f
    iget v5, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButtonTextColorNormal:I

    goto :goto_3
.end method
