.class public Lcom/android/incallui/view/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/view/ViewDragHelper;->TAG:Ljava/lang/String;

    .line 316
    new-instance v0, Lcom/android/incallui/view/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/android/incallui/view/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/android/incallui/view/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/incallui/view/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/android/incallui/view/ViewDragHelper$Callback;

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    .line 323
    new-instance v2, Lcom/android/incallui/view/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/view/ViewDragHelper$2;-><init>(Lcom/android/incallui/view/ViewDragHelper;)V

    iput-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 364
    if-nez p2, :cond_0

    .line 365
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_0
    if-nez p3, :cond_1

    .line 368
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 372
    iput-object p3, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    .line 374
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 375
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 376
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeSize:I

    .line 378
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    .line 379
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mMaxVelocity:F

    .line 380
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mMinVelocity:F

    .line 381
    sget-object v2, Lcom/android/incallui/view/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 382
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1232
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1233
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1235
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return v2

    .line 1241
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1242
    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1245
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1259
    if-nez p1, :cond_1

    move v2, v3

    .line 1272
    :cond_0
    :goto_0
    return v2

    .line 1262
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/android/incallui/view/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1263
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/android/incallui/view/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1265
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1266
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_2
    move v0, v3

    .line 1262
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1263
    goto :goto_2

    .line 1267
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1268
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1269
    :cond_5
    if-eqz v1, :cond_6

    .line 1270
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    .line 1272
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 658
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 660
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 659
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 660
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 640
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 641
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 643
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 642
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 643
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 771
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 772
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 773
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 774
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 775
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 776
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 777
    iput v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 781
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 789
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 790
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 791
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 792
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 793
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 794
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 795
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 608
    if-nez p1, :cond_0

    .line 609
    const/4 v6, 0x0

    .line 626
    :goto_0
    return v6

    .line 612
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 613
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 614
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 615
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {p0, v1}, Lcom/android/incallui/view/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 619
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 620
    if-lez p2, :cond_1

    .line 621
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 626
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 623
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 624
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    .line 587
    iget v12, p0, Lcom/android/incallui/view/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/android/incallui/view/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/android/incallui/view/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 588
    iget v12, p0, Lcom/android/incallui/view/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/android/incallui/view/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/android/incallui/view/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 589
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 590
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 591
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 592
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 593
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 594
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 596
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 598
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 601
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/android/incallui/view/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/android/incallui/view/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 602
    .local v8, "xduration":I
    iget-object v12, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/android/incallui/view/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/android/incallui/view/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 604
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 596
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .line 598
    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/android/incallui/view/ViewDragHelper$Callback;)Lcom/android/incallui/view/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/android/incallui/view/ViewDragHelper$Callback;

    .prologue
    .line 350
    invoke-static {p0, p2}, Lcom/android/incallui/view/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/android/incallui/view/ViewDragHelper$Callback;)Lcom/android/incallui/view/ViewDragHelper;

    move-result-object v0

    .line 351
    .local v0, "helper":Lcom/android/incallui/view/ViewDragHelper;
    iget v1, v0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    .line 352
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/android/incallui/view/ViewDragHelper$Callback;)Lcom/android/incallui/view/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/android/incallui/view/ViewDragHelper$Callback;

    .prologue
    .line 337
    new-instance v0, Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/incallui/view/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/incallui/view/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 756
    iput-boolean v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mReleaseInProgress:Z

    .line 757
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 758
    iput-boolean v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mReleaseInProgress:Z

    .line 760
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 762
    invoke-virtual {p0, v2}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    .line 764
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 664
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 665
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 666
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1380
    move v2, p1

    .line 1381
    .local v2, "clampedX":I
    move v3, p2

    .line 1382
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1383
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1386
    .local v7, "oldTop":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlideOffset()F

    move-result v0

    const v1, 0x3ec28f5c    # 0.38f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1387
    if-eqz p3, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/incallui/view/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1389
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1391
    :cond_0
    if-eqz p4, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/android/incallui/view/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1393
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1397
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1398
    :cond_2
    sub-int v4, v2, v6

    .line 1399
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1400
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1403
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 799
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 800
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 801
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 802
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 803
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 804
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 805
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 806
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 808
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 809
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 810
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 811
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 812
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 813
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 814
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 815
    iget-object v7, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 818
    :cond_1
    iput-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    .line 819
    iput-object v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    .line 820
    iput-object v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    .line 821
    iput-object v6, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    .line 822
    iput-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 823
    iput-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 824
    iput-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 826
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v0, 0x0

    .line 567
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 568
    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 569
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 570
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 572
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    .line 583
    :goto_0
    return v0

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/view/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 580
    .local v9, "duration":I
    iget-object v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 582
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    .line 583
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1458
    const/4 v0, 0x0

    .line 1460
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1461
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1462
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1463
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1465
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1369
    iget-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1370
    iget-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/view/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1373
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/view/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1376
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/view/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1377
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1211
    const/4 v0, 0x0

    .line 1212
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/incallui/view/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    or-int/lit8 v0, v0, 0x1

    .line 1215
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/android/incallui/view/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1216
    or-int/lit8 v0, v0, 0x4

    .line 1218
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/incallui/view/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1219
    or-int/lit8 v0, v0, 0x2

    .line 1221
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/android/incallui/view/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1222
    or-int/lit8 v0, v0, 0x8

    .line 1225
    :cond_3
    if-eqz v0, :cond_4

    .line 1226
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1227
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1229
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 829
    invoke-direct {p0, p3}, Lcom/android/incallui/view/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 830
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 831
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 832
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/view/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 833
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mPointersDown:I

    .line 834
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 837
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 838
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 839
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 840
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 841
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 842
    .local v4, "y":F
    iget-object v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    if-eqz v5, :cond_0

    .line 843
    iget-object v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    array-length v5, v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    array-length v5, v5

    if-ge v2, v5, :cond_0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 838
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 848
    iget-object v5, p0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    goto :goto_1

    .line 851
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_2
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    .line 503
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    .line 505
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v7

    .line 506
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 507
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 508
    .local v2, "newX":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 509
    .local v3, "newY":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 511
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    .line 512
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    .line 489
    invoke-direct {p0}, Lcom/android/incallui/view/ViewDragHelper;->clearMotionHistory()V

    .line 491
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 495
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 456
    iput p2, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    .line 457
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 458
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    .line 459
    return-void
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 709
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return v7

    .line 712
    :cond_0
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_6

    .line 713
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    .line 714
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 715
    .local v2, "x":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 716
    .local v3, "y":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 717
    .local v4, "dx":I
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 719
    .local v5, "dy":I
    if-eqz v4, :cond_1

    .line 720
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 722
    :cond_1
    if-eqz v5, :cond_2

    .line 723
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 726
    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 730
    :cond_4
    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 733
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 734
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v6

    .line 737
    :cond_5
    if-nez v6, :cond_6

    .line 738
    if-eqz p1, :cond_7

    .line 739
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 746
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_8

    const/4 v0, 0x1

    :goto_2
    move v7, v0

    goto :goto_0

    .line 741
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    goto :goto_1

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_8
    move v0, v7

    .line 746
    goto :goto_2
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1446
    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1447
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1448
    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/android/incallui/view/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1449
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1454
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1447
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1454
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 693
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    .line 694
    return-void
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/view/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1428
    if-nez p1, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1056
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1057
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1059
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    .line 1065
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1066
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1068
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1070
    packed-switch v3, :pswitch_data_0

    .line 1208
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1072
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1073
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1074
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1075
    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/view/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1077
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/android/incallui/view/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1082
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1085
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1092
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1093
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1094
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1096
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/android/incallui/view/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1099
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1102
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/view/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1103
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1106
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1109
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/view/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1120
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 1122
    .local v12, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1126
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1127
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1128
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1129
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1131
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/incallui/view/ViewDragHelper;->dragTo(IIII)V

    .line 1133
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/view/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1136
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1137
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1138
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1139
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1140
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1141
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1142
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1144
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/android/incallui/view/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1156
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/view/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1150
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/view/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1151
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/android/incallui/view/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1137
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1162
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1163
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1165
    const/4 v13, -0x1

    .line 1166
    .local v13, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1167
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1168
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1169
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1167
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1174
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1175
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1176
    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/view/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1178
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    .line 1183
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1185
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/view/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1188
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/view/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1193
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1194
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/view/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1196
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1201
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1202
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/view/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1204
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 871
    iget v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 872
    iput p1, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    .line 873
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 874
    if-nez p1, :cond_0

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 878
    :cond_0
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/incallui/view/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 946
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 947
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 949
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    .line 955
    :cond_0
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 956
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 958
    :cond_1
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 960
    packed-switch v0, :pswitch_data_0

    .line 1046
    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 962
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 963
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 964
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 965
    .local v7, "pointerId":I
    invoke-direct {p0, v9, v10, v7}, Lcom/android/incallui/view/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 967
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/view/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 970
    .local v8, "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 971
    invoke-virtual {p0, v8, v7}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 974
    :cond_3
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 975
    .local v4, "edgesTouched":I
    iget v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 976
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget v12, p0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 982
    .end local v4    # "edgesTouched":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 983
    .restart local v7    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 984
    .restart local v9    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 986
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v7}, Lcom/android/incallui/view/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 989
    iget v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    .line 990
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 991
    .restart local v4    # "edgesTouched":I
    iget v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 992
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    iget v12, p0, Lcom/android/incallui/view/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/android/incallui/view/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 994
    .end local v4    # "edgesTouched":I
    :cond_4
    iget v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 996
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/view/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 997
    .restart local v8    # "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    .line 998
    invoke-virtual {p0, v8, v7}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 1006
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1007
    .local v6, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_7

    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    if-eqz v11, :cond_7

    .line 1008
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1009
    .restart local v7    # "pointerId":I
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    array-length v11, v11

    if-ge v7, v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    array-length v11, v11

    if-lt v7, v11, :cond_6

    .line 1007
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1012
    :cond_6
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1013
    .restart local v9    # "x":F
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1014
    .restart local v10    # "y":F
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    .line 1015
    .local v2, "dx":F
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    .line 1017
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v7}, Lcom/android/incallui/view/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1018
    iget v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 1029
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/incallui/view/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1023
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v7    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_8
    iget-object v11, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    float-to-int v11, v11

    iget-object v12, p0, Lcom/android/incallui/view/ViewDragHelper;->mInitialMotionY:[F

    aget v12, v12, v7

    float-to-int v12, v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/view/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1024
    .restart local v8    # "toCapture":Landroid/view/View;
    if-eqz v8, :cond_5

    invoke-direct {p0, v8, v2, v3}, Lcom/android/incallui/view/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0, v8, v7}, Lcom/android/incallui/view/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    .line 1034
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "i":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1035
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lcom/android/incallui/view/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1041
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1046
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 529
    iput-object p1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 530
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    .line 532
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/android/incallui/view/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 890
    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 899
    :goto_0
    return v0

    .line 894
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/view/ViewDragHelper;->mCallback:Lcom/android/incallui/view/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/view/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    iput p2, p0, Lcom/android/incallui/view/ViewDragHelper;->mActivePointerId:I

    .line 896
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/view/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 899
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
