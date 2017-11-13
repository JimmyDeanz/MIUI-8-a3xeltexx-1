.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$1;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_COCKTAIL:I = 0x4

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_LEFT_CENTER_LEFT:I = 0x65

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_RIGHT_CENTER_RIGHT:I = 0x64

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private enableCocktailBar:Z

.field private final mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

.field private mCanStartEasyOneHand:Z

.field private mCocktailExtent:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mDebugFireable:Z

.field private final mDisplayId:I

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mFirstDownTime:J

.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsEnterdBottom:Z

.field private mIwm:Landroid/view/IWindowManager;

.field private mLastFlingTime:J

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mOverscroller:Landroid/widget/OverScroller;

.field private mStartFromLeft:Z

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 95
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    .line 96
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    .line 97
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 129
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 130
    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 131
    const-string/jumbo v1, "context"

    invoke-static {v1, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 133
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 150
    .local v0, "density":F
    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCurrentRotation:I

    .line 151
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCocktailExtent:I

    .line 155
    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDisplayId:I

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    .param p3, "displayId"    # I

    .prologue
    const/16 v2, 0x20

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 95
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    .line 96
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    .line 97
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 161
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 162
    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 163
    const-string/jumbo v1, "context"

    invoke-static {v1, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 165
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 182
    .local v0, "density":F
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCurrentRotation:I

    .line 183
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCocktailExtent:I

    .line 186
    iput p3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDisplayId:I

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    return-object v0
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 372
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 373
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 376
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 378
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 379
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 383
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    return-object p1
.end method

.method private detectEasyOneHandGesture(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 576
    const/4 v0, -0x1

    return v0
.end method

.method private detectSwipe(IJFF)I
    .locals 10
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const-wide/16 v8, 0x1f4

    .line 424
    iget-object v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v5, p1

    .line 425
    .local v2, "fromX":F
    iget-object v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    aget v3, v5, p1

    .line 426
    .local v3, "fromY":F
    iget-object v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v6, v5, p1

    sub-long v0, p2, v6

    .line 431
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 439
    .local v4, "swipeStartThreshold":I
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p5, v5

    if-lez v5, :cond_0

    cmp-long v5, v0, v8

    if-gez v5, :cond_0

    .line 454
    const/4 v5, 0x1

    .line 506
    :goto_0
    return v5

    .line 457
    :cond_0
    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    cmpg-float v5, p5, v5

    if-gez v5, :cond_1

    cmp-long v5, v0, v8

    if-gez v5, :cond_1

    .line 472
    const/4 v5, 0x2

    goto :goto_0

    .line 475
    :cond_1
    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    cmp-long v5, v0, v8

    if-gez v5, :cond_2

    .line 490
    const/4 v5, 0x3

    goto :goto_0

    .line 506
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 20
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 400
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 401
    .local v17, "pointerCount":I
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 402
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 403
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    .line 404
    .local v3, "i":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    .line 405
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_1
    if-ge v14, v15, :cond_2

    .line 406
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    .line 407
    .local v4, "time":J
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 408
    .local v6, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .local v7, "y":F
    move-object/from16 v2, p0

    .line 409
    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 410
    .local v19, "swipe":I
    if-eqz v19, :cond_1

    .line 420
    .end local v3    # "i":I
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v14    # "h":I
    .end local v18    # "pointerId":I
    .end local v19    # "swipe":I
    :cond_0
    :goto_2
    return v19

    .line 405
    .restart local v3    # "i":I
    .restart local v4    # "time":J
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    .restart local v14    # "h":I
    .restart local v18    # "pointerId":I
    .restart local v19    # "swipe":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 414
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "swipe":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 415
    .restart local v19    # "swipe":I
    if-nez v19, :cond_0

    .line 401
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 420
    .end local v3    # "i":I
    .end local v18    # "pointerId":I
    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 395
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 386
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    .line 392
    goto :goto_1

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 395
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 583
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private updateCocktailBarInfo()V
    .locals 1

    .prologue
    .line 590
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCurrentRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    iget-object v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 369
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 254
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 256
    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 257
    invoke-direct {p0, p1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 258
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 269
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 271
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 270
    goto :goto_1

    .line 292
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v3, :cond_1

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 294
    .local v0, "swipe":I
    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 295
    if-ne v0, v1, :cond_4

    .line 302
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_0

    .line 304
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 306
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_0

    .line 307
    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 309
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_0

    .line 312
    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 343
    .end local v0    # "swipe":I
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 344
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 345
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V

    invoke-direct {v1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 200
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    .line 201
    return-void
.end method
