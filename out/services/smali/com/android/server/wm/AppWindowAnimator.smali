.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppWindowAnimator"

.field static cfmsService:Landroid/os/ICustomFrequencyManager;

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field deferFinalFrameCleanup:Z

.field deferThumbnailDestruction:Z

.field freezingScreen:Z

.field hasTransformation:Z

.field lastFreezeDuration:I

.field mAllAppWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSkipFirstFrame:Z

.field openingAppAnimatorSharingThumbnailSurface:Lcom/android/server/wm/AppWindowAnimator;

.field thumbnail:Landroid/view/SurfaceControl;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailForceAboveLayer:I

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field thumbnailX:I

.field thumbnailY:I

.field final transformation:Landroid/view/animation/Transformation;

.field usingTransferredAnimation:Z

.field wasAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    .line 547
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->cfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 102
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    .line 116
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 127
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 128
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 129
    return-void
.end method

.method private getStartTimeCorrection()J
    .locals 4

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 388
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static notifyAnimationState(JZ)V
    .locals 2
    .param p0, "currentTime"    # J
    .param p2, "isStart"    # Z

    .prologue
    .line 550
    :try_start_0
    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 551
    const-string v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 552
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 553
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/AppWindowAnimator;->cfmsService:Landroid/os/ICustomFrequencyManager;

    .line 556
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_1

    .line 557
    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->cfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p0, p1, p2}, Landroid/os/ICustomFrequencyManager;->notifyWmAniationState(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private stepAnimation(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 353
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_0

    move v0, v1

    .line 377
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 357
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 358
    .local v0, "hasMoreFrames":Z
    if-nez v0, :cond_2

    .line 359
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    if-nez v2, :cond_3

    .line 362
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 363
    const/4 v0, 0x1

    .line 374
    :cond_1
    :goto_1
    invoke-static {p1, p2, v1}, Lcom/android/server/wm/AppWindowAnimator;->notifyAnimationState(JZ)V

    .line 376
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    goto :goto_0

    .line 368
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 369
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 370
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 371
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_1

    const-string v2, "AppWindowAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished animation in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stepThumbnailAnimation(J)V
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->clear()V

    .line 315
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, p1, p2, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 316
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 318
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 320
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 322
    .local v0, "screenAnimation":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 323
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 326
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 327
    .local v2, "tmpFloats":[F
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 331
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x5

    aget v7, v2, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 339
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 340
    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v5, :cond_2

    .line 341
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 348
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    aget v4, v2, v4

    const/4 v6, 0x3

    aget v6, v2, v6

    aget v3, v2, v3

    const/4 v7, 0x4

    aget v7, v2, v7

    invoke-virtual {v5, v4, v6, v3, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 350
    return-void

    .end local v0    # "screenAnimation":Z
    .end local v2    # "tmpFloats":[F
    :cond_1
    move v0, v4

    .line 320
    goto :goto_0

    .line 345
    .restart local v0    # "screenAnimation":Z
    .restart local v2    # "tmpFloats":[F
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_1
.end method

.method private updateAnimationDuration(Landroid/view/animation/Animation;)V
    .locals 12
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 294
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .line 295
    .local v7, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 296
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 297
    .local v4, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 298
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v5, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 299
    .local v5, "winAnimation":Landroid/view/animation/Animation;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 301
    instance-of v8, v5, Landroid/view/animation/AnimationSet;

    if-eqz v8, :cond_0

    move-object v3, v5

    .line 302
    check-cast v3, Landroid/view/animation/AnimationSet;

    .line 303
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 304
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 307
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 295
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    .end local v5    # "winAnimation":Landroid/view/animation/Animation;
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 197
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 198
    return-void
.end method

.method public clearThumbnail()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 210
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 503
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAnimator="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 505
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "freezingScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 506
    const-string v2, " allDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 507
    const-string v2, " animLayerAdjustment="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 508
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 512
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 513
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "animating="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 514
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "animation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 516
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v2, :cond_3

    .line 517
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "XForm: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 519
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 521
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    .line 522
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnail="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 523
    const-string v2, " x="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 524
    const-string v2, " y="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 525
    const-string v2, " layer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 526
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnailAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnailTransformation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 531
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowStateAnimator;

    .line 532
    .local v1, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "App Win Anim #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 533
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;IIZ)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "skipFirstFrame"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 136
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 137
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 140
    :cond_0
    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 141
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 142
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 143
    .local v1, "zorder":I
    const/4 v0, 0x0

    .line 144
    .local v0, "adj":I
    if-ne v1, v5, :cond_4

    .line 145
    const/16 v0, 0x3e8

    .line 157
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eq v2, v0, :cond_2

    .line 158
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 159
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 163
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 164
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 166
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 168
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v2, :cond_3

    .line 169
    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 171
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {p0, v2}, Lcom/android/server/wm/AppWindowAnimator;->updateAnimationDuration(Landroid/view/animation/Animation;)V

    .line 172
    return-void

    .line 146
    :cond_4
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 147
    const/16 v0, -0x3e8

    goto :goto_0

    .line 163
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDummyAnimation()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 185
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllWindowsLocked()Z
    .locals 7

    .prologue
    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "isAnimating":Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    .local v0, "NW":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 493
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 494
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_0

    const-string v4, "AppWindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performing show on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 497
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return v2
.end method

.method stepAnimationLocked(JI)Z
    .locals 11
    .param p1, "currentTime"    # J
    .param p3, "displayId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 399
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v2

    .line 402
    .local v2, "goodToDisplay":Z
    if-eqz v2, :cond_6

    .line 406
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_1

    move v5, v6

    .line 486
    :cond_0
    :goto_0
    return v5

    .line 414
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v7, :cond_7

    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_7

    .line 416
    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v7, :cond_5

    .line 417
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v7, :cond_3

    const-string v7, "AppWindowAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting animation in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " allDrawn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v9, v9, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " animating="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowAnimator;->getStartTimeCorrection()J

    move-result-wide v0

    .line 423
    .local v0, "correction":J
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    add-long v8, p1, v0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 424
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 425
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_4

    .line 426
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Landroid/view/SurfaceControl;->show()V

    .line 427
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    add-long v8, p1, v0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 429
    :cond_4
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 430
    invoke-static {p1, p2, v5}, Lcom/android/server/wm/AppWindowAnimator;->notifyAnimationState(JZ)V

    .line 432
    .end local v0    # "correction":J
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 435
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_0

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    goto/16 :goto_0

    .line 441
    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_7

    .line 444
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 445
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 448
    :cond_7
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 450
    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v7, :cond_8

    move v5, v6

    .line 451
    goto/16 :goto_0

    .line 454
    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v8, 0x8

    const-string v9, "AppWindowToken"

    invoke-virtual {v7, p0, v8, v9, p3}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 457
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 458
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 459
    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v7, :cond_9

    .line 460
    iput v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 461
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 463
    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v7, v8, :cond_a

    .line 465
    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 468
    :cond_a
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_b

    const-string v5, "AppWindowAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animation done in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": reportedVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->clear()V

    .line 474
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 475
    .local v4, "numAllAppWinAnimators":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_c

    .line 476
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 478
    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 482
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/VirtualScreenManagerService;->clearTransition()V

    move v5, v6

    .line 486
    goto/16 :goto_0
.end method

.method transferCurrentAnimation(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "toAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "transferWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iput-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 218
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 219
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    iput v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 221
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 225
    :cond_0
    if-eqz p2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iput-object p1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 230
    :cond_1
    return-void
.end method

.method updateLayers()V
    .locals 11

    .prologue
    .line 233
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .line 234
    .local v7, "windowCount":I
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 235
    .local v0, "adj":I
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 236
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_5

    .line 237
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 238
    .local v5, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 239
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v8, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v8, v0

    iput v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 242
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    .line 260
    .local v1, "centerBarWin":Lcom/android/server/wm/WindowState;
    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 261
    iget v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v9, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v9, v9, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 263
    :cond_0
    iget v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v9, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    if-le v8, v9, :cond_1

    .line 264
    iget v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v8, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 266
    :cond_1
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYERS:Z

    if-eqz v8, :cond_2

    const-string v8, "AppWindowAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating layer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-nez v8, :cond_3

    .line 268
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 279
    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v8, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 280
    .local v4, "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v8, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 282
    .local v3, "mLowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    if-ne v5, v4, :cond_4

    if-nez v3, :cond_4

    .line 286
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    .line 236
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "centerBarWin":Lcom/android/server/wm/WindowState;
    .end local v3    # "mLowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v4    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method
