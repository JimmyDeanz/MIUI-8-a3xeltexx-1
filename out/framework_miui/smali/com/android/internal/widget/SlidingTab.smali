.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$Slider;,
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_TARGET_TIME:I = 0x1f4

.field private static final DBG:Z = false

.field private static final HORIZONTAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final THRESHOLD:F = 0.6666667f

.field private static final TRACKING_MARGIN:I = 0x32

.field private static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private final mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private final mOrientation:I

.field private mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mThreshold:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 448
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x1080483

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 454
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 76
    iput v3, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 77
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 98
    new-instance v2, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 457
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 459
    sget-object v2, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 460
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    .line 461
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 464
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    .line 467
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x1080475

    const v4, 0x1080464

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 471
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x108047e

    const v4, 0x108046d

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 477
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/widget/SlidingTab;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/SlidingTab;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method private cancelGrab()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 632
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 633
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 634
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 637
    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 638
    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 639
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 640
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 850
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 851
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 854
    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 881
    const-string v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method

.method private moveHandle(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 741
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 742
    .local v3, "handle":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->access$700(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 743
    .local v0, "content":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 744
    float-to-int v4, p1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 745
    .local v1, "deltaX":I
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 746
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 752
    .end local v1    # "deltaX":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    .line 753
    return-void

    .line 748
    :cond_0
    float-to-int v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 749
    .local v2, "deltaY":I
    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 750
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private onAnimationDone()V
    .locals 1

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 714
    return-void
.end method

.method private resetView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 729
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 872
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 873
    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 874
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 878
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    const/4 v0, 0x1

    .line 824
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    .local v0, "hapticEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 828
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_1
    monitor-exit p0

    return-void

    .line 824
    .end local v0    # "hapticEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, -0x3db80000    # -50.0f

    .line 717
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v7, 0x3f2aaaab

    const v8, 0x3eaaaaaa

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 517
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 518
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 520
    .local v6, "y":F
    iget-boolean v11, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    if-eqz v11, :cond_0

    move v7, v9

    .line 559
    :goto_0
    return v7

    .line 524
    :cond_0
    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 525
    .local v1, "leftHandle":Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 526
    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v12, v5

    float-to-int v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 528
    .local v2, "leftHit":Z
    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 529
    .local v3, "rightHandle":Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 530
    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v12, v5

    float-to-int v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 532
    .local v4, "rightHit":Z
    iget-boolean v11, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v11, :cond_1

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    move v7, v9

    .line 533
    goto :goto_0

    .line 536
    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v7, v10

    .line 559
    goto :goto_0

    .line 538
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 539
    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 540
    const-wide/16 v12, 0x1e

    invoke-direct {p0, v12, v13}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 541
    if-eqz v2, :cond_3

    .line 542
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 543
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 544
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_2
    iput v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 545
    invoke-direct {p0, v10}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 552
    :goto_3
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 553
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    .line 554
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    goto :goto_1

    :cond_2
    move v7, v8

    .line 544
    goto :goto_2

    .line 547
    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 548
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 549
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_4
    iput v8, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 550
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_3

    :cond_4
    move v8, v7

    .line 549
    goto :goto_4

    .line 536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 733
    if-nez p1, :cond_0

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    :goto_1
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    goto :goto_0

    .line 736
    :cond_1
    const/4 v5, 0x3

    goto :goto_1

    .line 737
    :cond_2
    const/4 v5, 0x2

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 481
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 482
    .local v8, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 484
    .local v9, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 485
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 496
    .local v2, "heightSpecSize":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 497
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 498
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v4

    .line 499
    .local v4, "leftTabWidth":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v6

    .line 500
    .local v6, "rightTabWidth":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v3

    .line 501
    .local v3, "leftTabHeight":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    .line 504
    .local v5, "rightTabHeight":I
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 505
    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 506
    .local v7, "width":I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 511
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    .line 512
    return-void

    .line 508
    .end local v0    # "height":I
    .end local v7    # "width":I
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 509
    .restart local v7    # "width":I
    add-int v10, v3, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 587
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-eqz v7, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 589
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 590
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 592
    .local v6, "y":F
    packed-switch v0, :pswitch_data_0

    .line 628
    .end local v0    # "action":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v9, v8

    :cond_2
    return v9

    .line 594
    .restart local v0    # "action":I
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_0
    invoke-direct {p0, v5, v6, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 595
    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    .line 596
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 597
    .local v2, "position":F
    :goto_1
    iget v11, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v7

    :goto_2
    int-to-float v7, v7

    mul-float v3, v11, v7

    .line 599
    .local v3, "target":F
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 600
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v11, :cond_6

    cmpl-float v7, v2, v3

    if-lez v7, :cond_5

    move v4, v8

    .line 606
    .local v4, "thresholdReached":Z
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    if-nez v7, :cond_0

    if-eqz v4, :cond_0

    .line 607
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 608
    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 609
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 610
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v11, :cond_c

    move v1, v8

    .line 611
    .local v1, "isLeft":Z
    :goto_4
    if-eqz v1, :cond_d

    move v7, v8

    :goto_5
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    .line 614
    if-eqz v1, :cond_e

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    :goto_6
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    .line 615
    invoke-direct {p0, v9}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_0

    .end local v1    # "isLeft":Z
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "thresholdReached":Z
    :cond_3
    move v2, v6

    .line 596
    goto :goto_1

    .line 597
    .restart local v2    # "position":F
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v7

    goto :goto_2

    .restart local v3    # "target":F
    :cond_5
    move v4, v9

    .line 600
    goto :goto_3

    :cond_6
    cmpg-float v7, v2, v3

    if-gez v7, :cond_7

    move v4, v8

    goto :goto_3

    :cond_7
    move v4, v9

    goto :goto_3

    .line 603
    :cond_8
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v11, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v11, :cond_a

    cmpg-float v7, v2, v3

    if-gez v7, :cond_9

    move v4, v8

    .restart local v4    # "thresholdReached":Z
    :goto_7
    goto :goto_3

    .end local v4    # "thresholdReached":Z
    :cond_9
    move v4, v9

    goto :goto_7

    :cond_a
    cmpl-float v7, v2, v3

    if-lez v7, :cond_b

    move v4, v8

    goto :goto_7

    :cond_b
    move v4, v9

    goto :goto_7

    .restart local v4    # "thresholdReached":Z
    :cond_c
    move v1, v9

    .line 610
    goto :goto_4

    .restart local v1    # "isLeft":Z
    :cond_d
    move v7, v10

    .line 611
    goto :goto_5

    .line 614
    :cond_e
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    goto :goto_6

    .line 623
    .end local v1    # "isLeft":Z
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "thresholdReached":Z
    :cond_f
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    goto/16 :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 858
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 861
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eqz v0, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    .line 865
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 571
    if-nez p1, :cond_0

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 574
    :cond_0
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0
    .param p1, "holdLeft"    # Z
    .param p2, "holdRight"    # Z

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 817
    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 818
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 783
    :cond_0
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 769
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 771
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 772
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 843
    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 813
    :cond_0
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 801
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 802
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 582
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 583
    return-void
.end method

.method startAnimating(Z)V
    .locals 23
    .param p1, "holdAfter"    # Z

    .prologue
    .line 643
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 647
    .local v12, "slider":Lcom/android/internal/widget/SlidingTab$Slider;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 650
    .local v10, "other":Lcom/android/internal/widget/SlidingTab$Slider;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 651
    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getRight()I

    move-result v11

    .line 652
    .local v11, "right":I
    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    .line 653
    .local v18, "width":I
    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    .line 654
    .local v9, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v17

    .line 655
    .local v17, "viewWidth":I
    if-eqz p1, :cond_0

    const/4 v8, 0x0

    .line 656
    .local v8, "holdOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_1

    add-int v19, v11, v17

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v5, v0

    .line 658
    .local v5, "dx":I
    :goto_1
    const/4 v6, 0x0

    .line 669
    .end local v9    # "left":I
    .end local v11    # "right":I
    .end local v17    # "viewWidth":I
    .end local v18    # "width":I
    .local v6, "dy":I
    :goto_2
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 670
    .local v14, "trans1":Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 671
    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 672
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 673
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 674
    .local v15, "trans2":Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 675
    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 676
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 678
    new-instance v19, Lcom/android/internal/widget/SlidingTab$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 707
    invoke-virtual {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 708
    invoke-virtual {v12, v14, v15}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 709
    return-void

    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v8    # "holdOffset":I
    .end local v14    # "trans1":Landroid/view/animation/Animation;
    .end local v15    # "trans2":Landroid/view/animation/Animation;
    .restart local v9    # "left":I
    .restart local v11    # "right":I
    .restart local v17    # "viewWidth":I
    .restart local v18    # "width":I
    :cond_0
    move/from16 v8, v18

    .line 655
    goto/16 :goto_0

    .line 656
    .restart local v8    # "holdOffset":I
    :cond_1
    sub-int v19, v17, v9

    add-int v19, v19, v17

    sub-int v5, v19, v8

    goto :goto_1

    .line 660
    .end local v8    # "holdOffset":I
    .end local v9    # "left":I
    .end local v11    # "right":I
    .end local v17    # "viewWidth":I
    .end local v18    # "width":I
    :cond_2
    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getTop()I

    move-result v13

    .line 661
    .local v13, "top":I
    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 662
    .local v4, "bottom":I
    # getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    .line 663
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v16

    .line 664
    .local v16, "viewHeight":I
    if-eqz p1, :cond_3

    const/4 v8, 0x0

    .line 665
    .restart local v8    # "holdOffset":I
    :goto_3
    const/4 v5, 0x0

    .line 666
    .restart local v5    # "dx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_4

    add-int v19, v13, v16

    sub-int v6, v19, v8

    .restart local v6    # "dy":I
    :goto_4
    goto/16 :goto_2

    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v8    # "holdOffset":I
    :cond_3
    move v8, v7

    .line 664
    goto :goto_3

    .line 666
    .restart local v5    # "dx":I
    .restart local v8    # "holdOffset":I
    :cond_4
    sub-int v19, v16, v4

    add-int v19, v19, v16

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v6, v0

    goto :goto_4
.end method
