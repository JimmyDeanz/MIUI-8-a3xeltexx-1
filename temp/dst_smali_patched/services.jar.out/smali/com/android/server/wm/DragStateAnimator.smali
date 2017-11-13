.class Lcom/android/server/wm/DragStateAnimator;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String; = "DragStateAnimator"


# instance fields
.field final TYPE_NONE:I

.field final TYPE_SMARTCLIP:I

.field final TYPE_SPLIT:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationScheduled:Z

.field mCurrentTime:J

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mState:Lcom/android/server/wm/DragState;

.field mTargetWin:Lcom/android/server/wm/WindowState;

.field final mTransformation:Landroid/view/animation/Transformation;

.field mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/wm/DragState;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iput v1, p0, Lcom/android/server/wm/DragStateAnimator;->TYPE_NONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DragStateAnimator;->TYPE_SPLIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/DragStateAnimator;->TYPE_SMARTCLIP:I

    iput-object p1, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget-object v0, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v1, p0, Lcom/android/server/wm/DragStateAnimator;->mType:I

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mTargetWin:Lcom/android/server/wm/WindowState;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stepDropAnimation(J)Z
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .local v0, "more":Z
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_2

    const-string v3, "DragStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", xform="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v3, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .local v1, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v3, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .local v2, "tmpFloats":[F
    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget-boolean v3, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v3, :cond_3

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x4

    aget v6, v2, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .end local v2    # "tmpFloats":[F
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3
.end method


# virtual methods
.method animateLocked()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DragStateAnimator;->mCurrentTime:J

    iget-wide v0, p0, Lcom/android/server/wm/DragStateAnimator;->mCurrentTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DragStateAnimator;->stepAnimationLocked(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragStateAnimator;->scheduleAnimationLocked()V

    goto :goto_0
.end method

.method applyAnimationLocked()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mTargetWin:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    .local v3, "winCenterBar":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mTargetWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v8, p0, Lcom/android/server/wm/DragStateAnimator;->mType:I

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    if-eqz v4, :cond_3

    move v6, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_0

    iput v5, p0, Lcom/android/server/wm/DragStateAnimator;->mType:I

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, Lcom/android/server/wm/DragStateAnimator;->mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget-boolean v4, v4, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/wm/DragStateAnimator;->mType:I

    if-ne v4, v8, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004d

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "DragStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded animation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_c

    move v4, v5

    :goto_4
    move v6, v4

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004e

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_8
    iget v4, p0, Lcom/android/server/wm/DragStateAnimator;->mType:I

    if-ne v4, v8, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004c

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_5
    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mLastX:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mLastY:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget-object v7, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput v7, v4, Lcom/android/server/wm/DragState;->mLastX:F

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget-object v7, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput v7, v4, Lcom/android/server/wm/DragState;->mLastY:F

    :cond_9
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mLastX:F

    iget-object v7, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget-object v8, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v8, v8, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v8, v8, Lcom/android/server/wm/DragState;->mLastY:F

    iget-object v9, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v9, v9, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v9, v9, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v10, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v10, v10, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v9, v10

    invoke-direct {v2, v4, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v2, "trans":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    instance-of v4, v0, Landroid/view/animation/AnimationSet;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v2    # "trans":Landroid/view/animation/Animation;
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10a004b

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_5

    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/DragStateAnimator;->clearAnimation()V

    goto/16 :goto_3

    :cond_c
    move v4, v6

    goto/16 :goto_4
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimationScheduled:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DragStateAnimator;->animateLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method scheduleAnimationLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimationScheduled:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimationScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    iput-object p1, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    return-void
.end method

.method stepAnimationLocked(J)Z
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DragStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v3, v3, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/DragStateAnimator;->mState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    iput-boolean v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragStateAnimator;->stepDropAnimation(J)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "DragStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished animation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DragStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    move v0, v1

    goto :goto_0
.end method
