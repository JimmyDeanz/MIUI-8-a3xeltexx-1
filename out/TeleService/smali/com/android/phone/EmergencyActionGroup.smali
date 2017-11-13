.class public Lcom/android/phone/EmergencyActionGroup;
.super Landroid/widget/FrameLayout;
.source "EmergencyActionGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mHiding:Z

.field private mLastRevealed:Landroid/view/View;

.field private mLaunchHint:Landroid/view/View;

.field private mPendingTouchEvent:Landroid/view/MotionEvent;

.field private final mRippleRunnable:Ljava/lang/Runnable;

.field private mRippleView:Landroid/view/View;

.field private mSelectedContainer:Landroid/view/ViewGroup;

.field private mSelectedLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 339
    new-instance v0, Lcom/android/phone/EmergencyActionGroup$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyActionGroup$3;-><init>(Lcom/android/phone/EmergencyActionGroup;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mHideRunnable:Ljava/lang/Runnable;

    .line 347
    new-instance v0, Lcom/android/phone/EmergencyActionGroup$4;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyActionGroup$4;-><init>(Lcom/android/phone/EmergencyActionGroup;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mRippleRunnable:Ljava/lang/Runnable;

    .line 67
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyActionGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EmergencyActionGroup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyActionGroup;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EmergencyActionGroup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mRippleRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/EmergencyActionGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EmergencyActionGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/phone/EmergencyActionGroup;->mHiding:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyActionGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EmergencyActionGroup;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/EmergencyActionGroup;->hideTheButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyActionGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EmergencyActionGroup;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/EmergencyActionGroup;->startRipple()V

    return-void
.end method

.method private animateHintText(Landroid/view/View;Landroid/view/View;Landroid/animation/Animator;)V
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "reveal"    # Landroid/animation/Animator;

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p3}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p3}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyActionGroup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 272
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideTheButton()V
    .locals 7

    .prologue
    .line 275
    iget-boolean v4, p0, Lcom/android/phone/EmergencyActionGroup;->mHiding:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/EmergencyActionGroup;->mHiding:Z

    .line 281
    iget-object v4, p0, Lcom/android/phone/EmergencyActionGroup;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyActionGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mLastRevealed:Landroid/view/View;

    .line 284
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 285
    .local v0, "centerX":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 286
    .local v1, "centerY":I
    iget-object v4, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v1, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 293
    .local v2, "reveal":Landroid/animation/Animator;
    new-instance v4, Lcom/android/phone/EmergencyActionGroup$1;

    invoke-direct {v4, p0}, Lcom/android/phone/EmergencyActionGroup$1;-><init>(Lcom/android/phone/EmergencyActionGroup;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 304
    iget-object v4, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private revealTheButton(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x7f0e0000

    .line 238
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 240
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 241
    .local v1, "centerY":I
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v3, v0, v1, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 248
    .local v2, "reveal":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 250
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedLabel:Landroid/widget/TextView;

    invoke-direct {p0, v3, p1, v2}, Lcom/android/phone/EmergencyActionGroup;->animateHintText(Landroid/view/View;Landroid/view/View;Landroid/animation/Animator;)V

    .line 251
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mLaunchHint:Landroid/view/View;

    invoke-direct {p0, v3, p1, v2}, Lcom/android/phone/EmergencyActionGroup;->animateHintText(Landroid/view/View;Landroid/view/View;Landroid/animation/Animator;)V

    .line 253
    iget-object v4, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedLabel:Landroid/widget/TextView;

    move-object v3, p1

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 255
    iput-object p1, p0, Lcom/android/phone/EmergencyActionGroup;->mLastRevealed:Landroid/view/View;

    .line 256
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/EmergencyActionGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mRippleRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/EmergencyActionGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    iget-object v3, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 261
    return-void
.end method

.method private setupAssistActions()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 119
    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 126
    .local v1, "buttonIds":[I
    const/4 v4, 0x0

    .line 129
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_2

    .line 130
    aget v7, v1, v2

    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyActionGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    .local v0, "button":Landroid/widget/Button;
    const/4 v6, 0x0

    .line 133
    .local v6, "visible":Z
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 136
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 137
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyActionGroup;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 139
    .local v5, "name":Landroid/content/ComponentName;
    const/high16 v7, 0x7f0e0000

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/EmergencyActionGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v6, 0x1

    .line 146
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "name":Landroid/content/ComponentName;
    :cond_0
    if-eqz v6, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/16 v7, 0x8

    goto :goto_1

    .line 148
    .end local v0    # "button":Landroid/widget/Button;
    .end local v6    # "visible":Z
    :cond_2
    return-void

    .line 119
    nop

    :array_0
    .array-data 4
        0x7f0e0052
        0x7f0e0053
        0x7f0e0054
    .end array-data
.end method

.method private startRipple()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 310
    iget-object v1, p0, Lcom/android/phone/EmergencyActionGroup;->mRippleView:Landroid/view/View;

    .line 311
    .local v1, "ripple":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 312
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 319
    .local v0, "reveal":Landroid/animation/Animator;
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 320
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 322
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 323
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyActionGroup$2;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/EmergencyActionGroup$2;-><init>(Lcom/android/phone/EmergencyActionGroup;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 337
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 98
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/phone/EmergencyActionGroup;->mPendingTouchEvent:Landroid/view/MotionEvent;

    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyActionGroup;->mPendingTouchEvent:Landroid/view/MotionEvent;

    .line 101
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    const/high16 v1, 0x7f0e0000

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/EmergencyActionGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/EmergencyActionGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyActionGroup;->revealTheButton(Landroid/view/View;)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/phone/EmergencyActionGroup;->mHiding:Z

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/EmergencyActionGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x7f0e0052
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    invoke-direct {p0}, Lcom/android/phone/EmergencyActionGroup;->setupAssistActions()V

    .line 81
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyActionGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    .line 82
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyActionGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mSelectedLabel:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyActionGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mRippleView:Landroid/view/View;

    .line 85
    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyActionGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyActionGroup;->mLaunchHint:Landroid/view/View;

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 74
    return-void
.end method
