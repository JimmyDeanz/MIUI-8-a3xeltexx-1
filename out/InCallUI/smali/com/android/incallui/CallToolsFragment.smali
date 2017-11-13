.class public Lcom/android/incallui/CallToolsFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallToolsFragment.java"

# interfaces
.implements Lcom/android/incallui/CallToolsPresenter$CallToolsUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallToolsPresenter;",
        "Lcom/android/incallui/CallToolsPresenter$CallToolsUi;",
        ">;",
        "Lcom/android/incallui/CallToolsPresenter$CallToolsUi;"
    }
.end annotation


# instance fields
.field private isNeedLaunchShow:Z

.field private mAddCallButton:Landroid/widget/Button;

.field private mCallRecordTimer:Landroid/widget/Chronometer;

.field mCallRecorderToolsListener:Lcom/android/incallui/recorder/CallRecorderToolsListener;

.field private mContactButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHoldButton:Landroid/widget/ToggleButton;

.field private mInCallToolPanel:Landroid/view/View;

.field private mInCallToolPanelContent:Landroid/view/View;

.field private mManualClickAutoRecord:Z

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

.field private mPauseVideoButton:Landroid/widget/ToggleButton;

.field private mRcsMessageButton:Landroid/widget/Button;

.field private mRecordStartButton:Landroid/widget/ToggleButton;

.field private mRecordStartTxt:Landroid/widget/TextView;

.field private mRecordWaitServiceToConnect:Z

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSwapButton:Landroid/widget/Button;

.field private mSwitchCameraButton:Landroid/widget/Button;

.field private mSwitchToVideoButton:Landroid/widget/Button;

.field private mSwitchToVoiceButton:Landroid/widget/Button;

.field private mToggleAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mToolpadVisible:Z

.field private mVideoBottomPanel:Landroid/widget/LinearLayout;

.field private mVideoMuteButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mToolpadVisible:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mManualClickAutoRecord:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordWaitServiceToConnect:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->isNeedLaunchShow:Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mToggleAnimators:Ljava/util/HashMap;

    .line 229
    new-instance v0, Lcom/android/incallui/CallToolsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallToolsFragment$1;-><init>(Lcom/android/incallui/CallToolsFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecorderToolsListener:Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 286
    new-instance v0, Lcom/android/incallui/CallToolsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallToolsFragment$2;-><init>(Lcom/android/incallui/CallToolsFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallToolsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->onContactClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/incallui/CallToolsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/incallui/CallToolsFragment;->mManualClickAutoRecord:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/incallui/CallToolsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/incallui/CallToolsFragment;->onRecordButtonClick(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/incallui/CallToolsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHoldButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mMuteButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mVideoMuteButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/CallToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->checkPermissionOrPerformRecord()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/CallToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallToolsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->onNoteClick()V

    return-void
.end method

.method private checkPermissionOrPerformRecord()V
    .locals 6

    .prologue
    .line 373
    invoke-static {}, Lcom/android/incallui/util/PermissionGrantHelper;->getInstance()Lcom/android/incallui/util/PermissionGrantHelper;

    move-result-object v0

    .line 374
    .local v0, "permissionGrantHelper":Lcom/android/incallui/util/PermissionGrantHelper;
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/CallToolsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallToolsFragment$3;-><init>(Lcom/android/incallui/CallToolsFragment;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/util/PermissionGrantHelper;->checkPermissions(Landroid/app/Activity;Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;[Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private clearAnimatorSet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 686
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 688
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 689
    iput-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 693
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 694
    iput-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 696
    :cond_1
    return-void
.end method

.method private hideToolPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 469
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 470
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 471
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 472
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 475
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    .local v0, "callerNameAlpha":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    int-to-float v6, v2

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 479
    .local v1, "callerNameTranslate":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 482
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/CallToolsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/CallToolsFragment$5;-><init>(Lcom/android/incallui/CallToolsFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    .end local v0    # "callerNameAlpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "callerNameTranslate":Landroid/animation/ObjectAnimator;
    .end local v2    # "height":I
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 492
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 493
    return-void

    .line 475
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private onContactClick()V
    .locals 4

    .prologue
    .line 584
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallToolsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start Contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onNoteClick()V
    .locals 9

    .prologue
    .line 595
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 596
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v5, ""

    .line 597
    .local v5, "number":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 598
    .local v2, "date":J
    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 603
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    .line 604
    .local v1, "childIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 605
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 608
    .end local v1    # "childIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 609
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCallCreationTime()J

    move-result-wide v2

    .line 611
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v6, "sendIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    const-string v7, "vnd.android.cursor.item/call_note"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v7, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v7, "com.miui.notes.call_date"

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 617
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/incallui/CallToolsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v4

    .line 619
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not start note "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRecordButtonClick(Z)V
    .locals 6
    .param p1, "toStart"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsPresenter;->isSipCall()Z

    move-result v0

    .line 625
    .local v0, "isSip":Z
    if-eqz v0, :cond_0

    .line 626
    const v1, 0x7f0c0037

    invoke-static {v1}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    .line 627
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 628
    iput-boolean v3, p0, Lcom/android/incallui/CallToolsFragment;->mManualClickAutoRecord:Z

    .line 636
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartTxt:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 634
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 635
    invoke-static {}, Lcom/android/incallui/recorder/CallRecorderTools;->getInstance()Lcom/android/incallui/recorder/CallRecorderTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/recorder/CallRecorderTools;->onRecordClick(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 632
    goto :goto_1

    :cond_2
    move v2, v3

    .line 633
    goto :goto_2
.end method

.method private showToolPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 442
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 443
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 444
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 445
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 446
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 448
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 450
    .local v0, "callerNameAlpha":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    int-to-float v6, v2

    aput v6, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 452
    .local v1, "callerNameTranslate":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 455
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/CallToolsFragment$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/CallToolsFragment$4;-><init>(Lcom/android/incallui/CallToolsFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 462
    .end local v0    # "callerNameAlpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "callerNameTranslate":Landroid/animation/ObjectAnimator;
    .end local v2    # "height":I
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 463
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 465
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 466
    return-void

    .line 448
    nop

    :array_0
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
    .line 785
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsPresenter;->isVtConferenceCall()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsPresenter;->isVideoCall()Z

    move-result v0

    invoke-static {p1, p2, v1, v0, p3}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordVideoCallCountEvent(ZZZZ[Ljava/lang/String;)V

    .line 787
    return-void
.end method


# virtual methods
.method public changeCallToolMode()V
    .locals 2

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->clearAnimatorSet()V

    .line 701
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCallToolMode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsPresenter;->getCallToolMode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->initCallToolsView()V

    .line 709
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mToolpadVisible:Z

    if-eqz v0, :cond_2

    .line 713
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->hideToolPanel()V

    .line 714
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->showToolPanel()V

    .line 716
    :cond_2
    return-void
.end method

.method protected createPresenter()Lcom/android/incallui/CallToolsPresenter;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallToolsPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->createPresenter()Lcom/android/incallui/CallToolsPresenter;

    move-result-object v0

    return-object v0
.end method

.method public enableAddCall(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    return-void
.end method

.method public enableHold(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 547
    return-void
.end method

.method public enableMerge(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 572
    return-void
.end method

.method public enableMute(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 527
    return-void
.end method

.method public enableRcsMessageButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mRcsMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 731
    return-void
.end method

.method public enableSwitchCamera(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 781
    return-void
.end method

.method public enableSwitchToVideoButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 736
    return-void
.end method

.method public enableSwitchToVoiceButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 743
    :cond_0
    return-void
.end method

.method public enableVideoMute(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mVideoMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 532
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getToolPanelHideTime()I
    .locals 1

    .prologue
    .line 505
    const/16 v0, 0x64

    return v0
.end method

.method protected getUi()Lcom/android/incallui/CallToolsPresenter$CallToolsUi;
    .locals 0

    .prologue
    .line 99
    return-object p0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getUi()Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    move-result-object v0

    return-object v0
.end method

.method public getVideoBottomPanelHeight()F
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mVideoBottomPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mVideoBottomPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public initCallToolsView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 215
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallToolsPresenter;->getCallToolMode()I

    move-result v0

    .line 130
    .local v0, "mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCallToolsView mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mInCallToolPanelContent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 135
    .local v2, "vs":Landroid/view/ViewStub;
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    .line 149
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    const v4, 0x7f09005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mVideoBottomPanel:Landroid/widget/LinearLayout;

    .line 151
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    const v4, 0x7f09005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 152
    .local v1, "notesButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallToolsPresenter;->initVtView()V

    .line 213
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallToolsPresenter;->initCallTool()V

    .line 214
    invoke-static {}, Lcom/android/incallui/recorder/CallRecorderTools;->getInstance()Lcom/android/incallui/recorder/CallRecorderTools;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/recorder/CallRecorderTools;->checkRecordTime()V

    goto :goto_0

    .line 138
    .end local v1    # "notesButton":Landroid/widget/Button;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090059

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    goto :goto_1

    .line 141
    .end local v2    # "vs":Landroid/view/ViewStub;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 142
    .restart local v2    # "vs":Landroid/view/ViewStub;
    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    goto :goto_1

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    goto :goto_1

    .line 156
    .restart local v1    # "notesButton":Landroid/widget/Button;
    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    const v4, 0x7f09005b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mMuteButton:Landroid/widget/ToggleButton;

    .line 157
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mAddCallButton:Landroid/widget/Button;

    .line 160
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mContactButton:Landroid/widget/Button;

    .line 163
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mContactButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f09005c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHoldButton:Landroid/widget/ToggleButton;

    .line 167
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mHoldButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVideoButton:Landroid/widget/Button;

    .line 170
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVideoButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    .line 173
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 174
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartTxt:Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartTxt:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090066

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    .line 180
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 182
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mMergeButton:Landroid/widget/Button;

    .line 183
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mMergeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwapButton:Landroid/widget/Button;

    .line 186
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwapButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 191
    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    const v4, 0x7f0900f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mVideoMuteButton:Landroid/widget/ToggleButton;

    .line 192
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mVideoMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mRcsMessageButton:Landroid/widget/Button;

    .line 195
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mRcsMessageButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f0900fb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVoiceButton:Landroid/widget/Button;

    .line 198
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVoiceButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f0900fc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    .line 201
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 204
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    const v4, 0x7f0900fa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    .line 205
    iget-object v3, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/CallToolsFragment;->mOnEffectiveClickListener:Lcom/android/incallui/view/OnEffectiveClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isInCallToolPanelContentInit()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanelContent:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToolPanelVisible()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mToolpadVisible:Z

    return v0
.end method

.method public onCallRecordingStarted(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    const/4 v2, 0x0

    .line 663
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 664
    iput-boolean v2, p0, Lcom/android/incallui/CallToolsFragment;->mManualClickAutoRecord:Z

    .line 665
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartTxt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 668
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 669
    return-void
.end method

.method public onCallRecordingStoped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 673
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 676
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    const v0, 0x7f03000e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    .line 112
    invoke-static {}, Lcom/android/incallui/recorder/CallRecorderTools;->getInstance()Lcom/android/incallui/recorder/CallRecorderTools;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecorderToolsListener:Lcom/android/incallui/recorder/CallRecorderToolsListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/recorder/CallRecorderTools;->addCallRecorderToolsListener(Lcom/android/incallui/recorder/CallRecorderToolsListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 680
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 681
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->clearAnimatorSet()V

    .line 682
    invoke-static {}, Lcom/android/incallui/recorder/CallRecorderTools;->getInstance()Lcom/android/incallui/recorder/CallRecorderTools;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mCallRecorderToolsListener:Lcom/android/incallui/recorder/CallRecorderToolsListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/recorder/CallRecorderTools;->removeCallRecorderToolsListener(Lcom/android/incallui/recorder/CallRecorderToolsListener;)V

    .line 683
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsPresenter;->refreshMuteState()V

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 223
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->isNeedLaunchShow:Z

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->isNeedLaunchShow:Z

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallToolsFragment;->setVisible(Z)V

    .line 227
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsPresenter;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setHold(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 537
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setNeedLaunchShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallToolsFragment;->setVisible(Z)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsFragment;->isNeedLaunchShow:Z

    goto :goto_0
.end method

.method public setPauseVideoButton(Z)V
    .locals 1
    .param p1, "isPaused"    # Z

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 772
    :cond_0
    return-void
.end method

.method public setSwitchCameraButton(Z)V
    .locals 1
    .param p1, "isBackFacingCamera"    # Z

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 765
    :cond_0
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mVideoMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x0

    .line 420
    if-eqz p1, :cond_1

    .line 422
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mToolpadVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->isNeedLaunchShow:Z

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mToolpadVisible:Z

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisible true, mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsPresenter;->getCallToolMode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsFragment;->initCallToolsView()V

    .line 426
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->showToolPanel()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mToolpadVisible:Z

    if-eqz v0, :cond_0

    .line 431
    iput-boolean v2, p0, Lcom/android/incallui/CallToolsFragment;->mToolpadVisible:Z

    .line 432
    invoke-direct {p0}, Lcom/android/incallui/CallToolsFragment;->hideToolPanel()V

    goto :goto_0
.end method

.method public showAddCall(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    return-void

    .line 561
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showContactButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    return-void

    .line 720
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showHold(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 542
    return-void

    .line 541
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showMerge(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 552
    return-void

    .line 551
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwap(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    return-void

    .line 556
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwitchToVideoButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 747
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVideoButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 748
    return-void

    .line 747
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startRotationAnimator(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mVideoMuteButton:Landroid/widget/ToggleButton;

    invoke-static {v0, p1, p2}, Lcom/android/incallui/AnimationUtils;->startRotationAnimator(Landroid/view/View;II)V

    .line 577
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-static {v0, p1, p2}, Lcom/android/incallui/AnimationUtils;->startRotationAnimator(Landroid/view/View;II)V

    .line 578
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mSwitchToVoiceButton:Landroid/widget/Button;

    invoke-static {v0, p1, p2}, Lcom/android/incallui/AnimationUtils;->startRotationAnimator(Landroid/view/View;II)V

    .line 579
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;

    invoke-static {v0, p1, p2}, Lcom/android/incallui/AnimationUtils;->startRotationAnimator(Landroid/view/View;II)V

    .line 580
    return-void
.end method

.method public startWaitingRecord()V
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordWaitServiceToConnect:Z

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "record service bind to activity, start record"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordWaitServiceToConnect:Z

    .line 650
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->performClick()Z

    .line 652
    :cond_0
    return-void
.end method

.method public stopManualAutoRecordIfNotStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsFragment;->mManualClickAutoRecord:Z

    if-eqz v0, :cond_0

    .line 657
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsFragment;->mManualClickAutoRecord:Z

    .line 658
    invoke-direct {p0, v1}, Lcom/android/incallui/CallToolsFragment;->onRecordButtonClick(Z)V

    .line 660
    :cond_0
    return-void
.end method

.method public waitingToRecord(Z)V
    .locals 0
    .param p1, "toWait"    # Z

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/android/incallui/CallToolsFragment;->mRecordWaitServiceToConnect:Z

    .line 641
    return-void
.end method
