.class public Lcom/android/incallui/DialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/incallui/DialpadPresenter$DialpadUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadFragment$DTMFKeyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;"
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private isNeedLaunchShow:Z

.field private mDialPad:Landroid/view/View;

.field private mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

.field private mIsDialpadVisible:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->sHandler:Landroid/os/Handler;

    .line 66
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090081

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090082

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090084

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f090089

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09008d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09008e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09008c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->mIsDialpadVisible:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->isNeedLaunchShow:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/DialpadFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/DialpadFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/DialpadFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/DialpadFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private hideDialer()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 474
    invoke-static {}, Lcom/android/incallui/InCallApp;->isElderMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 480
    .local v3, "height":I
    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 481
    .local v1, "callerNameAlpha":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    neg-int v7, v3

    int-to-float v7, v7

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 484
    .local v2, "callerNameTranslate":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 485
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 486
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    new-instance v4, Lcom/android/incallui/DialpadFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/DialpadFragment$3;-><init>(Lcom/android/incallui/DialpadFragment;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 497
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 500
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 480
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 549
    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 551
    .local v2, "viewId":I
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 555
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 556
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 557
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 559
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "viewId":I
    :cond_0
    return-void
.end method

.method private showDialer()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 450
    invoke-static {}, Lcom/android/incallui/InCallApp;->isElderMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    :goto_0
    return-void

    .line 453
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 454
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 455
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 458
    .local v3, "height":I
    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 459
    .local v1, "callerNameAlpha":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    neg-int v7, v3

    int-to-float v7, v7

    aput v7, v6, v9

    const/4 v7, 0x0

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 461
    .local v2, "callerNameTranslate":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/incallui/DialpadFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/DialpadFragment$2;-><init>(Lcom/android/incallui/DialpadFragment;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 467
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 470
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 458
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public appendDigitsToField(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 514
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallCardPresenter;->appendDigitsToField(C)V

    .line 517
    :cond_0
    return-void
.end method

.method protected createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/android/incallui/DialpadPresenter;

    invoke-direct {v0}, Lcom/android/incallui/DialpadPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDialpadHideTime()I
    .locals 1

    .prologue
    .line 508
    const/16 v0, 0x64

    return v0
.end method

.method protected getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;
    .locals 0

    .prologue
    .line 384
    return-object p0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->mIsDialpadVisible:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 278
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 281
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    .line 283
    sget-object v2, Lcom/android/incallui/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/DialpadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/DialpadFragment$1;-><init>(Lcom/android/incallui/DialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    .end local v1    # "id":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 390
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-static {}, Lcom/android/incallui/InCallApp;->isElderMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f03001a

    .line 396
    .local v0, "resId":I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;

    .line 397
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;

    .line 398
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 399
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;

    return-object v1

    .line 395
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f030013

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    .line 422
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 423
    return-void
.end method

.method onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 523
    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 527
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 535
    const-string v0, "Notifying dtmf key up."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 300
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 303
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 304
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 305
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    .line 307
    .local v1, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 323
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    :goto_0
    return v9

    .line 310
    .restart local v1    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 313
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 314
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 315
    .local v6, "y":I
    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 318
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey:  keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 332
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 347
    .end local v0    # "viewId":I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 335
    .restart local v0    # "viewId":I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 340
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 405
    iget-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->isNeedLaunchShow:Z

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->isNeedLaunchShow:Z

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 409
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 352
    const-string v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 356
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 361
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 366
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setNeedLaunchShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 412
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0, v1}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/DialpadFragment;->isNeedLaunchShow:Z

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 427
    if-eqz p1, :cond_3

    .line 428
    iget-boolean v3, p0, Lcom/android/incallui/DialpadFragment;->mIsDialpadVisible:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/incallui/DialpadFragment;->isNeedLaunchShow:Z

    if-nez v3, :cond_2

    .line 429
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/DialpadFragment;->mIsDialpadVisible:Z

    .line 430
    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 431
    invoke-static {}, Lcom/android/incallui/InCallApp;->isElderMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 432
    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 433
    .local v2, "viewId":I
    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 434
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 435
    const v3, 0x7f0200b8

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 439
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "viewId":I
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->showDialer()V

    .line 447
    :cond_2
    :goto_1
    return-void

    .line 442
    :cond_3
    iget-boolean v3, p0, Lcom/android/incallui/DialpadFragment;->mIsDialpadVisible:Z

    if-eqz v3, :cond_2

    .line 443
    iput-boolean v4, p0, Lcom/android/incallui/DialpadFragment;->mIsDialpadVisible:Z

    .line 444
    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->hideDialer()V

    goto :goto_1
.end method
