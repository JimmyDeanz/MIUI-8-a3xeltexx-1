.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DISTANCE_M1:F = 3.0f

.field private static final DISTANCE_M2:F = 1.5f

.field private static final DURATION_M1:F = 3.0f

.field private static final DURATION_M2:F = 1.8f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final HIGHER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final HIGHER_TIME_GAP_MARGIN:J = 0x1L

.field private static INFLEXION:F = 0.0f

.field private static final INFLEXIONS:[F

.field private static final LOWER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final LOWER_TIME_GAP_MARGIN:J = 0x1L

.field private static final MARGIN_COMPENSATION_STARTING_COUNT:I = 0x1e

.field private static final NB_SAMPLES:I = 0x64

.field public static final ORIGINAL_MODE:I = 0x0

.field public static final SMOOTH_MODE:I = 0x1

.field private static final SPLINE:I = 0x0

.field private static SPLINE_POSITION:[F = null

.field private static final SPLINE_POSITIONS:[[F

.field private static SPLINE_TIME:[F = null

.field private static final SPLINE_TIMES:[[F

.field private static final START_TENSION:F = 0.5f

.field private static mEnableSmoothFling:Z

.field private static mRegulateCurrentTimeInterval:Z


# instance fields
.field private fBoostParamVal:[I

.field private fBoostTimeOut:I

.field private flingBoostTimeOut:I

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsDVFSBoosting:Z

.field private mIsPerfBoostEnabled:Z

.field private mIsPerfLockAcquired:Z

.field private mMaximumVelocity:I

.field private mOver:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private mPrevTime:J

.field private mPrevTimeGap:J

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .prologue
    .line 640
    const-wide v14, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide v16, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    double-to-float v14, v14

    sput v14, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 652
    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    .line 653
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    sput v14, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    .line 669
    const/4 v14, 0x2

    const/16 v15, 0x65

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    .line 670
    const/4 v14, 0x2

    const/16 v15, 0x65

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    .line 671
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 672
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sput-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 692
    const/4 v14, 0x1

    sput-boolean v14, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    .line 693
    const/4 v14, 0x1

    sput-boolean v14, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    .line 715
    const/4 v6, 0x0

    .local v6, "mode":I
    :goto_0
    const/4 v14, 0x2

    if-ge v6, v14, :cond_5

    .line 717
    const/high16 v14, 0x3f000000    # 0.5f

    sget-object v15, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v15, v15, v6

    mul-float v0, v14, v15

    .line 718
    .local v0, "P1":F
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sget-object v17, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v17, v17, v6

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    sub-float v1, v14, v15

    .line 721
    .local v1, "P2":F
    const/4 v10, 0x0

    .line 722
    .local v10, "x_min":F
    const/4 v13, 0x0

    .line 723
    .local v13, "y_min":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v14, 0x64

    if-ge v5, v14, :cond_4

    .line 724
    int-to-float v14, v5

    const/high16 v15, 0x42c80000    # 100.0f

    div-float v2, v14, v15

    .line 726
    .local v2, "alpha":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 729
    .local v9, "x_max":F
    :goto_2
    sub-float v14, v9, v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v8, v10, v14

    .line 730
    .local v8, "x":F
    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v8

    mul-float v3, v14, v15

    .line 731
    .local v3, "coef":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    mul-float/2addr v14, v0

    mul-float v15, v8, v1

    add-float/2addr v14, v15

    mul-float/2addr v14, v3

    mul-float v15, v8, v8

    mul-float/2addr v15, v8

    add-float v7, v14, v15

    .line 732
    .local v7, "tx":F
    sub-float v14, v7, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    .line 739
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v14, v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v8

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float/2addr v15, v8

    mul-float/2addr v15, v3

    mul-float v16, v8, v8

    mul-float v16, v16, v8

    add-float v15, v15, v16

    aput v15, v14, v5

    .line 742
    const/high16 v12, 0x3f800000    # 1.0f

    .line 745
    .local v12, "y_max":F
    :goto_3
    sub-float v14, v12, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v11, v13, v14

    .line 746
    .local v11, "y":F
    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v11

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    mul-float v3, v14, v15

    .line 747
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v14, v11

    mul-float/2addr v14, v3

    mul-float v15, v11, v11

    mul-float/2addr v15, v11

    add-float v4, v14, v15

    .line 748
    .local v4, "dy":F
    sub-float v14, v4, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_2

    .line 755
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v14, v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    mul-float/2addr v15, v0

    mul-float v16, v11, v1

    add-float v15, v15, v16

    mul-float/2addr v15, v3

    mul-float v16, v11, v11

    mul-float v16, v16, v11

    add-float v15, v15, v16

    aput v15, v14, v5

    .line 723
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 733
    .end local v4    # "dy":F
    .end local v11    # "y":F
    .end local v12    # "y_max":F
    :cond_0
    cmpl-float v14, v7, v2

    if-lez v14, :cond_1

    move v9, v8

    goto/16 :goto_2

    .line 734
    :cond_1
    move v10, v8

    goto/16 :goto_2

    .line 749
    .restart local v4    # "dy":F
    .restart local v11    # "y":F
    .restart local v12    # "y_max":F
    :cond_2
    cmpl-float v14, v4, v2

    if-lez v14, :cond_3

    move v12, v11

    goto :goto_3

    .line 750
    :cond_3
    move v13, v11

    goto :goto_3

    .line 761
    .end local v2    # "alpha":F
    .end local v3    # "coef":F
    .end local v4    # "dy":F
    .end local v7    # "tx":F
    .end local v8    # "x":F
    .end local v9    # "x_max":F
    .end local v11    # "y":F
    .end local v12    # "y_max":F
    :cond_4
    sget-object v14, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v14, v14, v6

    const/16 v15, 0x64

    sget-object v16, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v16, v16, v6

    const/16 v17, 0x64

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    aput v18, v14, v15

    .line 715
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 764
    .end local v0    # "P1":F
    .end local v1    # "P2":F
    .end local v5    # "i":I
    .end local v10    # "x_min":F
    .end local v13    # "y_min":F
    :cond_5
    return-void

    .line 652
    nop

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 632
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 684
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 685
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 686
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 687
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 688
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    .line 706
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 707
    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    .line 708
    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 712
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 789
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 790
    # getter for: Landroid/widget/OverScroller;->USE_SET_SMOOTH_SCROLL:Z
    invoke-static {}, Landroid/widget/OverScroller;->access$800()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    .line 791
    .local v1, "isOriginalMode":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float v2, v5, v6

    .line 792
    .local v2, "ppi":F
    const v5, 0x43c10b3d

    mul-float/2addr v5, v2

    const v6, 0x3f570a3d    # 0.84f

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 799
    iget-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v5, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostParamVal:[I

    .line 806
    :cond_0
    sget-boolean v5, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    if-ne v5, v3, :cond_1

    .line 807
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 808
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    .line 812
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_1
    if-eqz v1, :cond_2

    .line 813
    invoke-virtual {p0, v4}, Landroid/widget/OverScroller$SplineOverScroller;->setMode(I)V

    .line 816
    :cond_2
    iget-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v3, :cond_3

    .line 817
    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 819
    :cond_3
    return-void

    .end local v1    # "isOriginalMode":Z
    .end local v2    # "ppi":F
    :cond_4
    move v1, v4

    .line 790
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 837
    sub-int v2, p2, p1

    .line 838
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 839
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 840
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 841
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 842
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 843
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 844
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 845
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 846
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 847
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 849
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1028
    neg-int v5, p3

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v5, v6

    .line 1030
    .local v2, "durationToApex":F
    int-to-float v5, p3

    int-to-float v6, p3

    mul-float v4, v5, v6

    .line 1031
    .local v4, "velocitySquared":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v0, v5, v6

    .line 1032
    .local v0, "distanceToApex":F
    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    .line 1033
    .local v1, "distanceToEdge":F
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-float v5, v0, v1

    float-to-double v8, v5

    mul-double/2addr v6, v8

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 1035
    .local v3, "totalDuration":F
    iget-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v5, 0x447a0000    # 1000.0f

    sub-float v8, v3, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1036
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1037
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1038
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 829
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    .line 980
    sget v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 14
    .param p1, "velocity"    # I

    .prologue
    .line 984
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v4

    .line 985
    .local v4, "l":D
    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v10, v12

    .line 988
    .local v0, "decelMinusOne":D
    sget-boolean v9, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 989
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 990
    .local v3, "rate":F
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v3

    float-to-int v2, v9

    .line 992
    .local v2, "index":I
    const/16 v9, 0x64

    if-le v2, v9, :cond_0

    const/16 v2, 0x64

    .line 994
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v10, v10, v2

    sub-float v8, v9, v10

    .line 995
    .local v8, "value":F
    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const/high16 v10, 0x3fc00000    # 1.5f

    add-float/2addr v9, v10

    float-to-double v6, v9

    .line 997
    .local v6, "tuningValue":D
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    float-to-double v10, v9

    mul-double/2addr v10, v6

    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    float-to-double v12, v9

    mul-double/2addr v10, v12

    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v12, v9

    div-double/2addr v12, v0

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    .line 1001
    .end local v2    # "index":I
    .end local v3    # "rate":F
    .end local v6    # "tuningValue":D
    .end local v8    # "value":F
    :goto_0
    return-wide v10

    :cond_1
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v10, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v12, v9

    div-double/2addr v12, v0

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    goto :goto_0
.end method

.method private getSplineFlingDuration(I)I
    .locals 14
    .param p1, "velocity"    # I

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v4

    .line 1007
    .local v4, "l":D
    sget v9, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v10, v12

    .line 1010
    .local v0, "decelMinusOne":D
    sget-boolean v9, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1011
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 1012
    .local v3, "rate":F
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v3

    float-to-int v2, v9

    .line 1014
    .local v2, "index":I
    const/16 v9, 0x64

    if-le v2, v9, :cond_0

    const/16 v2, 0x64

    .line 1016
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v10, v10, v2

    sub-float v8, v9, v10

    .line 1017
    .local v8, "value":F
    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const v10, 0x3fe66666    # 1.8f

    add-float/2addr v9, v10

    float-to-double v6, v9

    .line 1019
    .local v6, "tuningValue":D
    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v6

    div-double v12, v4, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v9, v10

    .line 1023
    .end local v2    # "index":I
    .end local v3    # "rate":F
    .end local v6    # "tuningValue":D
    .end local v8    # "value":F
    :goto_0
    return v9

    :cond_1
    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v12, v4, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v9, v10

    goto :goto_0
.end method

.method private onEdgeReached()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1083
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 1084
    .local v2, "velocitySquared":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    div-float v0, v2, v3

    .line 1085
    .local v0, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 1087
    .local v1, "sign":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 1089
    neg-float v3, v1

    mul-float/2addr v3, v2

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1090
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v3

    .line 1093
    :cond_0
    float-to-int v3, v0

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1094
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1095
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_2

    .end local v0    # "distance":F
    :goto_0
    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1096
    const/high16 v3, 0x447a0000    # 1000.0f

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1098
    sget-boolean v3, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1099
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1102
    :cond_1
    return-void

    .line 1095
    .restart local v0    # "distance":F
    :cond_2
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 1047
    move/from16 v0, p2

    if-le p1, v0, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 1048
    const-string v2, "OverScroller"

    const-string/jumbo v3, "startAfterEdge called from a valid position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1067
    :goto_0
    return-void

    .line 1052
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v11, 0x1

    .line 1053
    .local v11, "positive":Z
    :goto_1
    if-eqz v11, :cond_2

    move/from16 v8, p3

    .line 1054
    .local v8, "edge":I
    :goto_2
    sub-int v10, p1, v8

    .line 1055
    .local v10, "overDistance":I
    mul-int v2, v10, p4

    if-ltz v2, :cond_3

    const/4 v9, 0x1

    .line 1056
    .local v9, "keepIncreasing":Z
    :goto_3
    if-eqz v9, :cond_4

    .line 1058
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 1052
    .end local v8    # "edge":I
    .end local v9    # "keepIncreasing":Z
    .end local v10    # "overDistance":I
    .end local v11    # "positive":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .restart local v11    # "positive":Z
    :cond_2
    move/from16 v8, p2

    .line 1053
    goto :goto_2

    .line 1055
    .restart local v8    # "edge":I
    .restart local v10    # "overDistance":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 1060
    .restart local v9    # "keepIncreasing":Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v12

    .line 1061
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_7

    .line 1062
    if-eqz v11, :cond_5

    move/from16 v5, p2

    :goto_4
    if-eqz v11, :cond_6

    move v6, p1

    :goto_5
    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v2, p0

    move v3, p1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v5, p1

    goto :goto_4

    :cond_6
    move/from16 v6, p3

    goto :goto_5

    .line 1064
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1041
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1042
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 1043
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 1044
    return-void

    :cond_0
    move v0, p3

    .line 1041
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 914
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 915
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 916
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 917
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 918
    sub-int v0, p1, p2

    .line 919
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 921
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 922
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 923
    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 924
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1105
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1129
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1130
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 1108
    :pswitch_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 1110
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1112
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1113
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1114
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1115
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1122
    :pswitch_2
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1123
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 888
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 889
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 890
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 891
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 892
    return-void
.end method

.method finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 866
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-eqz v0, :cond_0

    .line 867
    invoke-static {v1}, Landroid/os/DVFSHelper;->onSmoothScrollEvent(Z)V

    .line 868
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 870
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 872
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 875
    :cond_1
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 880
    return-void
.end method

.method fling(IIIII)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 927
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 928
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 929
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 930
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 931
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 932
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 934
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_0

    .line 935
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 936
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 939
    :cond_0
    if-gt p1, p4, :cond_1

    if-ge p1, p3, :cond_3

    .line 940
    :cond_1
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 977
    :cond_2
    :goto_0
    return-void

    .line 944
    :cond_3
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 945
    const-wide/16 v0, 0x0

    .line 947
    .local v0, "totalDistance":D
    if-eqz p2, :cond_5

    .line 948
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 949
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 952
    sget-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-nez v2, :cond_5

    const/16 v2, 0x320

    if-ge p2, v2, :cond_4

    const/16 v2, -0x320

    if-gt p2, v2, :cond_5

    .line 953
    :cond_4
    invoke-static {v5}, Landroid/os/DVFSHelper;->onSmoothScrollEvent(Z)V

    .line 954
    iput-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 958
    :cond_5
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 959
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 962
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_6

    .line 963
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 964
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 967
    :cond_6
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_7

    .line 968
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 969
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 973
    :cond_7
    sget-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    if-ne v2, v5, :cond_2

    .line 974
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 1071
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 1072
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1073
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1076
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 1078
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 883
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 885
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 785
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 786
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 768
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    if-nez p1, :cond_2

    .line 772
    sput-boolean v1, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    .line 773
    sput-boolean v1, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    .line 778
    :goto_1
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v0, v0, p1

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    .line 779
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 780
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    goto :goto_0

    .line 775
    :cond_2
    sput-boolean v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableSmoothFling:Z

    .line 776
    sput-boolean v0, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    goto :goto_1
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 897
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 898
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 900
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 901
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 903
    if-ge p1, p2, :cond_1

    .line 904
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 909
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 905
    :cond_1
    if-le p1, p3, :cond_0

    .line 906
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 909
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 852
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 854
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 855
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 857
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 858
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 861
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 862
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 863
    return-void
.end method

.method update()Z
    .locals 28

    .prologue
    .line 1139
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v22

    .line 1143
    .local v22, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v24, v0

    sub-long v4, v22, v24

    .line 1144
    .local v4, "currentTime":J
    move-wide v14, v4

    .line 1146
    .local v14, "originalCurrentTime":J
    sget-boolean v24, Landroid/widget/OverScroller$SplineOverScroller;->mRegulateCurrentTimeInterval:Z

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 1148
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    add-long v24, v24, v4

    const-wide/16 v26, 0x2

    div-long v4, v24, v26

    .line 1150
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    move/from16 v24, v0

    const/16 v25, 0x1e

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 1151
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    sub-long v6, v4, v24

    .line 1153
    .local v6, "currentTimeGap":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    cmp-long v24, v6, v24

    if-lez v24, :cond_4

    .line 1154
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/16 v26, 0x1

    add-long v4, v24, v26

    .line 1160
    .end local v6    # "currentTimeGap":J
    :cond_1
    :goto_0
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-gez v24, :cond_2

    .line 1161
    const-wide/16 v4, 0x0

    .line 1164
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    sub-long v24, v4, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 1165
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1170
    :cond_3
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-nez v24, :cond_6

    .line 1172
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v24, v0

    if-lez v24, :cond_5

    const/16 v24, 0x1

    .line 1230
    :goto_1
    return v24

    .line 1155
    .restart local v6    # "currentTimeGap":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    cmp-long v24, v6, v24

    if-gez v24, :cond_1

    .line 1156
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/16 v26, 0x1

    sub-long v4, v24, v26

    goto :goto_0

    .line 1172
    .end local v6    # "currentTimeGap":J
    :cond_5
    const/16 v24, 0x0

    goto :goto_1

    .line 1174
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v4, v24

    if-lez v24, :cond_7

    .line 1175
    const/16 v24, 0x0

    goto :goto_1

    .line 1178
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 1179
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 1180
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 1182
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    .line 1187
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostParamVal:[I

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1190
    :cond_8
    const-wide/16 v10, 0x0

    .line 1191
    .local v10, "distance":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1228
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v24, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1230
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 1185
    .end local v10    # "distance":D
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    goto :goto_2

    .line 1193
    .restart local v10    # "distance":D
    :pswitch_0
    long-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 1194
    .local v17, "t":F
    const/high16 v24, 0x42c80000    # 100.0f

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v13, v0

    .line 1195
    .local v13, "index":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1196
    .local v12, "distanceCoef":F
    const/16 v21, 0x0

    .line 1197
    .local v21, "velocityCoef":F
    const/16 v24, 0x64

    move/from16 v0, v24

    if-ge v13, v0, :cond_a

    .line 1198
    int-to-float v0, v13

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v19, v24, v25

    .line 1199
    .local v19, "t_inf":F
    add-int/lit8 v24, v13, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v20, v24, v25

    .line 1200
    .local v20, "t_sup":F
    sget-object v24, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v8, v24, v13

    .line 1201
    .local v8, "d_inf":F
    sget-object v24, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v25, v13, 0x1

    aget v9, v24, v25

    .line 1202
    .local v9, "d_sup":F
    sub-float v24, v9, v8

    sub-float v25, v20, v19

    div-float v21, v24, v25

    .line 1203
    sub-float v24, v17, v19

    mul-float v24, v24, v21

    add-float v12, v8, v24

    .line 1206
    .end local v8    # "d_inf":F
    .end local v9    # "d_sup":F
    .end local v19    # "t_inf":F
    .end local v20    # "t_sup":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v12

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1207
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    const/high16 v25, 0x447a0000    # 1000.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_3

    .line 1212
    .end local v12    # "distanceCoef":F
    .end local v13    # "index":I
    .end local v17    # "t":F
    .end local v21    # "velocityCoef":F
    :pswitch_1
    long-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x447a0000    # 1000.0f

    div-float v17, v24, v25

    .line 1213
    .restart local v17    # "t":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    mul-float v25, v25, v17

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1215
    goto/16 :goto_3

    .line 1219
    .end local v17    # "t":F
    :pswitch_2
    long-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 1220
    .restart local v17    # "t":F
    mul-float v18, v17, v17

    .line 1221
    .local v18, "t2":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v16

    .line 1222
    .local v16, "sign":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/high16 v25, 0x40400000    # 3.0f

    mul-float v25, v25, v18

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v26, v26, v17

    mul-float v26, v26, v18

    sub-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1223
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/high16 v25, 0x40c00000    # 6.0f

    mul-float v24, v24, v25

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v18

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_3

    .line 1191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 822
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 823
    return-void
.end method
