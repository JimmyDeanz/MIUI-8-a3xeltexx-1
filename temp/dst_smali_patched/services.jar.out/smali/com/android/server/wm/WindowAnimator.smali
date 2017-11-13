.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

.field mForceHiding:I

.field mHideWindowsByOthers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInitialized:Z

.field mIsExpandedDisplayAnimating:Z

.field mIsVRConnected:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field private mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowDetachedWallpapers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/FallbackArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    iput-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mIsExpandedDisplayAnimating:Z

    new-instance v0, Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpapers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mIsVRConnected:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    return-void
.end method

.method private animateLocked(J)V
    .locals 27
    .param p1, "frameTimeNs"    # J

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v22, 0xf4240

    div-long v22, p1, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/16 v21, 0x8

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    .local v19, "wasAnimating":Z
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    sget-boolean v21, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v21, :cond_2

    const-string v21, "WindowAnimator"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!!! animate: entry time="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    const/high16 v17, 0x3f800000    # 1.0f

    .local v17, "scale":F
    :try_start_0
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreenManagerService;->updateVirtualScreenPosition(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v15

    .local v15, "numDisplays":I
    add-int/lit8 v13, v15, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .local v7, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v18, v0

    .local v18, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v20

    .local v20, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .local v4, "N":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    if-ge v14, v4, :cond_7

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .end local v4    # "N":I
    .end local v14    # "j":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "i":I
    .end local v15    # "numDisplays":I
    .end local v18    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v21, "WindowAnimator"

    const-string v22, "Unhandled exception in Window Manager"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .end local v11    # "e":Ljava/lang/RuntimeException;
    :goto_4
    const/4 v12, 0x0

    .local v12, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v15

    .restart local v15    # "numDisplays":I
    const/4 v8, 0x0

    .local v8, "displayNdx":I
    :goto_5
    if-ge v8, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v16

    .local v16, "pendingChanges":I
    and-int/lit8 v21, v16, 0x4

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x20

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_5
    if-eqz v16, :cond_6

    const/4 v12, 0x1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v12    # "hasPendingLayoutChanges":Z
    .end local v16    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    .restart local v18    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_7
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v14    # "j":I
    .end local v18    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_8
    const/4 v10, 0x0

    .local v10, "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v15, :cond_b

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v18, v0

    .restart local v18    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v22

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .end local v7    # "displayId":I
    .end local v18    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_b
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/VirtualScreenManagerService;->clearVirtualScreenPosition()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_4

    .end local v10    # "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    .end local v13    # "i":I
    .end local v15    # "numDisplays":I
    :catchall_0
    move-exception v21

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v21

    .restart local v8    # "displayNdx":I
    .restart local v12    # "hasPendingLayoutChanges":Z
    .restart local v15    # "numDisplays":I
    :cond_e
    const/4 v9, 0x0

    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v9

    :cond_f
    if-nez v12, :cond_10

    if-eqz v9, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    if-nez v21, :cond_12

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :cond_12
    sget-boolean v21, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v21, :cond_0

    const-string v21, "WindowAnimator"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!!! animate: exit mAnimating="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mBulkUpdateParams="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mPendingLayoutChanges(DEFAULT_DISPLAY)="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    :pswitch_1
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    :pswitch_2
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isinWhitelist(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "MultiWindow"

    aput-object v7, v4, v6

    const-string v7, "MinimizeAnimator"

    aput-object v7, v4, v5

    .local v4, "whitelist":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "white":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v3    # "white":Ljava/lang/String;
    :goto_1
    return v5

    .restart local v3    # "white":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "white":Ljava/lang/String;
    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 16
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .local v5, "imeTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .local v11, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_7

    const/4 v2, 0x0

    .local v2, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-nez v12, :cond_1

    iget-object v12, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_0

    iget-object v12, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v12, v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v13, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v5, v13}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v12

    if-nez v12, :cond_8

    :cond_1
    const/4 v9, 0x1

    .local v9, "showImeOverKeyguard":Z
    :goto_1
    const/4 v1, 0x0

    .local v1, "allowWhenLocked":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v4, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_9

    :cond_2
    if-eqz v9, :cond_9

    const/4 v12, 0x1

    :goto_2
    or-int/2addr v1, v12

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-eqz v12, :cond_a

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_3
    or-int/2addr v1, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->getAppsShowWhenLockedLw()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v2, v12, :cond_4

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_b

    :cond_4
    const/4 v12, 0x1

    :goto_4
    or-int/2addr v1, v12

    :cond_5
    const/4 v8, 0x0

    .local v8, "keyguardState":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v12

    if-eqz v12, :cond_10

    if-eqz v8, :cond_10

    const/4 v7, 0x1

    .local v7, "keyguardOn":Z
    :goto_6
    if-nez v7, :cond_6

    if-eqz v4, :cond_6

    iget v12, v4, Lcom/android/server/wm/AppWindowToken;->userId:I

    const/16 v13, 0x64

    if-lt v12, v13, :cond_6

    iget v10, v4, Lcom/android/server/wm/AppWindowToken;->userId:I

    .local v10, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12

    sget-object v13, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v12, v13, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/pm/PersonaManagerService;->isKnoxKeyguardShown(I)Z

    move-result v12

    if-nez v12, :cond_11

    const/4 v6, 0x1

    .local v6, "isKnoxContainerLocked":Z
    :goto_7
    if-eqz v6, :cond_6

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wm/WindowAnimator;->isinWhitelist(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v7, 0x1

    const-string v12, "WindowAnimator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KNOX("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v14

    sget-object v15, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v14, v15, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isKnoxKeyguardShown : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/server/pm/PersonaManagerService;->isKnoxKeyguardShown(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "isKnoxContainerLocked":Z
    .end local v10    # "userId":I
    :cond_6
    if-eqz v7, :cond_12

    if-nez v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    if-nez v12, :cond_12

    const/4 v12, 0x1

    :goto_8
    return v12

    .end local v1    # "allowWhenLocked":Z
    .end local v2    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    .end local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "keyguardOn":Z
    .end local v8    # "keyguardState":Z
    .end local v9    # "showImeOverKeyguard":Z
    :cond_7
    iget-object v2, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_0

    .restart local v2    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .restart local v1    # "allowWhenLocked":Z
    .restart local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v9    # "showImeOverKeyguard":Z
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .restart local v3    # "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_4

    .restart local v8    # "keyguardState":Z
    :sswitch_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    const/4 v8, 0x1

    :goto_9
    goto/16 :goto_5

    :cond_c
    const/4 v8, 0x0

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_f

    const/4 v8, 0x1

    :goto_a
    goto/16 :goto_5

    :cond_f
    const/4 v8, 0x0

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_6

    .restart local v7    # "keyguardOn":Z
    .restart local v10    # "userId":I
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_7

    .end local v10    # "userId":I
    :cond_12
    const/4 v12, 0x0

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x7d9 -> :sswitch_0
        0x8b2 -> :sswitch_0
    .end sparse-switch
.end method

.method private shouldForceHideByOthers(Lcom/android/server/wm/WindowState;I)Z
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isHMTconnected()Z

    move-result v1

    .local v1, "isHMTconnecting":Z
    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, p1, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hide by NightClock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const-string v4, "WindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NightClock : turning screen on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, "tempWin":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v2, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v5, "updateWindowsAndWallpaperLocked 4"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_1

    .end local v2    # "tempWin":Lcom/android/server/wm/WindowState;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_3

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_1

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v9, :cond_0

    const-string v9, "WindowAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numInteresting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numDrawn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x4

    const-string v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v9, 0x8

    const-string v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14
    .param p1, "displayId"    # I

    .prologue
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_7

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_3

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .local v10, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "tokenNdx":I
    :goto_2
    if-ltz v9, :cond_2

    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_0

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWindowsApps...: done animating "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    .local v2, "exitingCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exiting appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_4

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWindowsApps...: done animating exiting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .end local v1    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "exitingCount":I
    .end local v3    # "i":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 17
    .param p1, "displayId"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v13

    .local v13, "windows":Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .local v3, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    const/4 v7, 0x0

    .local v7, "lastAnimationBackgroundStack":Lcom/android/server/wm/TaskStack;
    const/4 v6, 0x0

    .local v6, "lastAnimationBackgroundColor":I
    const/4 v8, 0x0

    .local v8, "lastWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v9, 0x0

    .local v9, "lastWinAnimatorCount":I
    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_a

    invoke-virtual {v13, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .local v11, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v12, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v14, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v4, "flags":I
    iget-boolean v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v14, :cond_6

    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_5

    const/high16 v14, 0x100000

    and-int/2addr v14, v4

    if-eqz v14, :cond_2

    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v3, v11

    :cond_2
    const/4 v2, 0x0

    .local v2, "color":I
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .local v10, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v14, :cond_3

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v14, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_5

    :cond_4
    move-object v7, v10

    move v6, v2

    move-object v8, v12

    add-int/lit8 v9, v9, 0x1

    .end local v2    # "color":I
    .end local v10    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_6
    iget-object v1, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v1, :cond_0

    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_0

    iget-boolean v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v14, :cond_0

    const/high16 v14, 0x100000

    and-int/2addr v14, v4

    if-eqz v14, :cond_7

    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v3, v11

    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "color":I
    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .restart local v10    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_0

    if-eqz v2, :cond_9

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v14

    if-nez v14, :cond_0

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v14, v14, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v14, :cond_0

    if-eqz v8, :cond_8

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_0

    :cond_8
    move-object v7, v10

    move v6, v2

    move-object v8, v12

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_0

    move-object v8, v12

    goto/16 :goto_1

    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v2    # "color":I
    .end local v4    # "flags":I
    .end local v10    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v11    # "win":Lcom/android/server/wm/WindowState;
    .end local v12    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_a
    if-eqz v7, :cond_b

    const/4 v14, 0x1

    if-ne v9, v14, :cond_e

    if-eqz v8, :cond_e

    iget-object v14, v8, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v14, :cond_e

    const-string v14, "WindowAnimator"

    const-string v15, "Skip setting animation background if there is an exiting window only."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v14, v3, :cond_d

    sget-boolean v14, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v14, :cond_c

    const-string v14, "WindowAnimator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Detached wallpaper changed from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_d
    return-void

    :cond_e
    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_2
.end method

.method private updateWindowsLocked(I)V
    .locals 44
    .param p1, "displayId"    # I

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .local v24, "mWallpaperTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    .local v23, "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v37

    .local v37, "windows":Lcom/android/server/wm/WindowList;
    const/16 v22, 0x0

    .local v22, "keyguardShow":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowList;->size()I

    move-result v38

    add-int/lit8 v20, v38, -0x1

    .local v20, "i":I
    :goto_0
    if-ltz v20, :cond_2

    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/WindowState;

    .local v35, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v39, v0

    invoke-interface/range {v38 .. v39}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v38

    if-nez v38, :cond_0

    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    .local v36, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v38, v0

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0x400

    move/from16 v38, v0

    if-eqz v38, :cond_14

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v38, v0

    if-nez v38, :cond_2

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v38, :cond_1

    const-string v38, "WindowAnimator"

    const-string v39, "updateWindowsLocked: creating delay animation"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v38, Landroid/view/animation/AlphaAnimation;

    const/high16 v39, 0x3f800000    # 1.0f

    const/high16 v40, 0x3f800000    # 1.0f

    invoke-direct/range {v38 .. v40}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v38, v0

    const-wide/16 v40, 0x3e8

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .end local v20    # "i":I
    .end local v35    # "win":Lcom/android/server/wm/WindowState;
    .end local v36    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    :goto_1
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/16 v32, 0x0

    .local v32, "wallpaperInUnForceHiding":Z
    const/16 v28, 0x0

    .local v28, "startingInUnForceHiding":Z
    const/16 v29, 0x0

    .local v29, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v31, 0x0

    .local v31, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowList;->size()I

    move-result v38

    add-int/lit8 v20, v38, -0x1

    .restart local v20    # "i":I
    :goto_2
    if-ltz v20, :cond_42

    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/WindowState;

    .restart local v35    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    .restart local v36    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    .local v19, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v38

    if-eqz v38, :cond_16

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v39, 0x832

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_16

    :cond_3
    const/4 v13, 0x1

    .local v13, "canBeForceHidden":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v26

    .local v26, "shouldBeForceHidden":Z
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v38, v0

    if-eqz v38, :cond_3c

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v33, v0

    .local v33, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v25

    .local v25, "nowAnimating":Z
    move/from16 v0, v25

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v38, v0

    or-int v38, v38, v25

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v38, v0

    if-eqz v38, :cond_17

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_17

    const/4 v10, 0x1

    .local v10, "appWindowAnimating":Z
    :goto_4
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v38, v0

    if-eqz v38, :cond_18

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_18

    const/16 v34, 0x1

    .local v34, "wasAppWindowAnimating":Z
    :goto_5
    if-nez v10, :cond_4

    if-eqz v25, :cond_19

    :cond_4
    const/4 v7, 0x1

    .local v7, "anyAnimating":Z
    :goto_6
    if-nez v34, :cond_5

    if-eqz v33, :cond_1a

    :cond_5
    const/4 v8, 0x1

    .local v8, "anyWasAnimating":Z
    :goto_7
    if-eqz v7, :cond_1d

    if-nez v8, :cond_1d

    :try_start_0
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v39, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1b

    const/16 v38, -0x1

    :goto_8
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/view/IWindow;->onAnimationStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_9
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v38, :cond_7

    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ": wasAnimating="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", nowAnimating="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v33, :cond_8

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v38, v0

    if-nez v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v38, 0x0

    const/16 v39, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "d["

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "] updateWindowsAndWallpaperLocked 2"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_8
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/view/WindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v38

    if-eqz v38, :cond_21

    if-nez p1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v38

    if-eqz v38, :cond_1f

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v14

    .local v14, "changedByCover":Z
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    if-eqz v14, :cond_a

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v38, v0

    const/high16 v39, 0x80000

    and-int v38, v38, v39

    if-eqz v38, :cond_1e

    const/16 v27, 0x1

    .local v27, "showWhenLock":Z
    :goto_a
    if-eqz v27, :cond_a

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    move/from16 v38, v0

    if-eqz v38, :cond_a

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_9

    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Show surface turning screen on: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x10

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .end local v27    # "showWhenLock":Z
    :cond_a
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_b

    if-eqz v14, :cond_b

    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mForceHidingByCover Now policy hidden: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_b
    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .local v15, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v15, :cond_c

    iget v0, v15, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v38, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_d
    const/high16 v38, 0x100000

    and-int v38, v38, v19

    if-eqz v38, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v38, 0x0

    const/16 v39, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const-string v39, "updateWindowsAndWallpaperLocked 5"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .end local v7    # "anyAnimating":Z
    .end local v8    # "anyWasAnimating":Z
    .end local v10    # "appWindowAnimating":Z
    .end local v14    # "changedByCover":Z
    .end local v15    # "currentFocus":Lcom/android/server/wm/WindowState;
    .end local v25    # "nowAnimating":Z
    .end local v33    # "wasAnimating":Z
    .end local v34    # "wasAppWindowAnimating":Z
    :cond_e
    :goto_c
    move-object/from16 v0, v35

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v12, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v38, v0

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_10

    if-eqz v12, :cond_f

    iget-boolean v0, v12, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v38, v0

    if-eqz v38, :cond_10

    :cond_f
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v38

    if-eqz v38, :cond_10

    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const-string v39, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_10
    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v9, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v9, :cond_12

    iget-object v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v38, v0

    if-eqz v38, :cond_12

    iget v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v38, v0

    move/from16 v0, v38

    iput v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    const/16 v38, 0x0

    move/from16 v0, v38

    iput v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_11
    iget v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v38, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_12

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v38, v0

    move/from16 v0, v38

    iput v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_12
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3e

    move-object/from16 v31, v35

    .end local v9    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v12    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_13
    :goto_d
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_2

    .end local v13    # "canBeForceHidden":Z
    .end local v19    # "flags":I
    .end local v26    # "shouldBeForceHidden":Z
    .end local v28    # "startingInUnForceHiding":Z
    .end local v29    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v31    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v32    # "wallpaperInUnForceHiding":Z
    :cond_14
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v38, :cond_15

    const-string v38, "WindowAnimator"

    const-string v39, "updateWindowsLocked: StatusBar is no longer keyguard"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_1

    .restart local v19    # "flags":I
    .restart local v28    # "startingInUnForceHiding":Z
    .restart local v29    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .restart local v31    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v32    # "wallpaperInUnForceHiding":Z
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_3

    .restart local v13    # "canBeForceHidden":Z
    .restart local v25    # "nowAnimating":Z
    .restart local v26    # "shouldBeForceHidden":Z
    .restart local v33    # "wasAnimating":Z
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_4

    .restart local v10    # "appWindowAnimating":Z
    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_5

    .restart local v34    # "wasAppWindowAnimating":Z
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_6

    .restart local v7    # "anyAnimating":Z
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_7

    .restart local v8    # "anyWasAnimating":Z
    :cond_1b
    :try_start_1
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    const/16 v38, 0x1

    goto/16 :goto_8

    :cond_1c
    const/16 v38, 0x0

    goto/16 :goto_8

    :cond_1d
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/view/IWindow;->onAnimationStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v17

    .local v17, "e":Landroid/os/RemoteException;
    const-string v38, "WindowAnimator"

    const-string v39, "Failed to dispatch window animation state change."

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .end local v17    # "e":Landroid/os/RemoteException;
    .restart local v14    # "changedByCover":Z
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_a

    .end local v14    # "changedByCover":Z
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v38

    if-eqz v38, :cond_20

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v14

    .restart local v14    # "changedByCover":Z
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_b

    if-eqz v14, :cond_b

    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Now policy shown: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v14    # "changedByCover":Z
    :cond_20
    const/4 v14, 0x0

    .restart local v14    # "changedByCover":Z
    goto/16 :goto_b

    .end local v14    # "changedByCover":Z
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->shouldForceHideByOthers(Lcom/android/server/wm/WindowState;I)Z

    move-result v38

    if-nez v38, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v39, v0

    invoke-interface/range {v38 .. v39}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v38

    if-eqz v38, :cond_2b

    if-nez v33, :cond_27

    if-eqz v25, :cond_27

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v38, :cond_22

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v38, :cond_22

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_23

    :cond_22
    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Animation started that could impact force hide: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x4

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v38, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const-string v39, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_24
    :goto_e
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v38

    if-eqz v38, :cond_25

    if-eqz v25, :cond_28

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v38, v0

    if-eqz v38, :cond_28

    const/16 v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    :cond_25
    :goto_f
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v38, :cond_26

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_e

    :cond_26
    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Force hide "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " hasSurface="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " policyVis="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " destroying="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " attHidden="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " vis="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " hidden="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " anim="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v38, v0

    if-eqz v38, :cond_24

    if-nez v25, :cond_24

    const-string v38, "WindowAnimator"

    const-string v39, "Timeout waiting for animation to startup"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_e

    :cond_28
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v38

    if-nez v38, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2a

    :cond_29
    const/16 v38, 0x1

    :goto_10
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_f

    :cond_2a
    const/16 v38, 0x0

    goto :goto_10

    :cond_2b
    if-eqz v13, :cond_e

    if-eqz v26, :cond_2e

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v38

    if-eqz v38, :cond_13

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v38, :cond_2c

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_2d

    :cond_2c
    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Now policy hidden: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_11
    const/high16 v38, 0x100000

    and-int v38, v38, v19

    if-eqz v38, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v38, 0x0

    const/16 v39, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const-string v39, "updateWindowsAndWallpaperLocked 4"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_c

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v38

    if-nez v38, :cond_2f

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v38, v0

    if-nez v38, :cond_2f

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v38

    if-eqz v38, :cond_2f

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-nez v38, :cond_2f

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v39, 0x8b2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_2f

    const/4 v11, 0x1

    .local v11, "applyExistingExitAnimation":Z
    :goto_12
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v38

    if-eqz v38, :cond_30

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/am/VirtualScreenManagerService;->isVisibleVirtualScreen(I)Z

    move-result v38

    if-nez v38, :cond_30

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v38

    if-nez v38, :cond_30

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_13

    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Hide VirtualScreen is not visible "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .end local v11    # "applyExistingExitAnimation":Z
    :cond_2f
    const/4 v11, 0x0

    goto :goto_12

    .restart local v11    # "applyExistingExitAnimation":Z
    :cond_30
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v38

    if-nez v38, :cond_31

    if-nez v11, :cond_31

    const/high16 v38, 0x100000

    and-int v38, v38, v19

    if-eqz v38, :cond_13

    const/16 v32, 0x1

    goto/16 :goto_d

    :cond_31
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v30

    .local v30, "visibleNow":Z
    if-nez v30, :cond_32

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_d

    :cond_32
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v38, :cond_33

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v38, :cond_34

    :cond_33
    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Now policy shown: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x4

    if-eqz v38, :cond_3a

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-nez v38, :cond_3a

    if-nez v29, :cond_35

    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .restart local v29    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_35
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v38, 0x100000

    and-int v38, v38, v19

    if-eqz v38, :cond_36

    const/16 v32, 0x1

    :cond_36
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_37

    const/16 v28, 0x1

    :cond_37
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .restart local v15    # "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v15, :cond_38

    iget v0, v15, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v38, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_2d

    :cond_38
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v38, :cond_39

    const-string v38, "WindowAnimator"

    const-string v39, "updateWindowsLocked: setting mFocusMayChange true"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_11

    .end local v15    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_3a
    if-eqz v11, :cond_37

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v38, :cond_3b

    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Applying existing Keyguard exit animation to new window: win="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v40, v0

    invoke-interface/range {v38 .. v40}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v6

    .local v6, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v38

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto/16 :goto_13

    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v7    # "anyAnimating":Z
    .end local v8    # "anyWasAnimating":Z
    .end local v10    # "appWindowAnimating":Z
    .end local v11    # "applyExistingExitAnimation":Z
    .end local v25    # "nowAnimating":Z
    .end local v30    # "visibleNow":Z
    .end local v33    # "wasAnimating":Z
    .end local v34    # "wasAppWindowAnimating":Z
    :cond_3c
    if-eqz v13, :cond_e

    if-eqz v26, :cond_3d

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_c

    :cond_3d
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_c

    .restart local v9    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v12    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3e
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v39, 0x7d0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_40

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v38, v0

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0x400

    move/from16 v38, v0

    if-eqz v38, :cond_3f

    const/16 v22, 0x1

    :goto_14
    if-nez p1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v38

    if-eqz v38, :cond_13

    const/16 v22, 0x0

    goto/16 :goto_d

    :cond_3f
    const/16 v22, 0x0

    goto :goto_14

    :cond_40
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v39, 0x832

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    move/from16 v38, v0

    if-nez v38, :cond_13

    if-eqz v22, :cond_41

    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    .local v16, "cw":Lcom/android/server/wm/WindowState;
    const/16 v38, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    goto :goto_15

    .end local v16    # "cw":Lcom/android/server/wm/WindowState;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_41
    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    .restart local v16    # "cw":Lcom/android/server/wm/WindowState;
    const/16 v38, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    goto :goto_16

    .end local v9    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v12    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v13    # "canBeForceHidden":Z
    .end local v16    # "cw":Lcom/android/server/wm/WindowState;
    .end local v19    # "flags":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v26    # "shouldBeForceHidden":Z
    .end local v35    # "win":Lcom/android/server/wm/WindowState;
    .end local v36    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_42
    if-eqz v29, :cond_4a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v38, v0

    if-nez v38, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyguardWaitingForActivityDrawn:Z

    move/from16 v38, v0

    if-nez v38, :cond_47

    const/16 v18, 0x1

    .local v18, "first":Z
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v38

    add-int/lit8 v20, v38, -0x1

    :goto_17
    if-ltz v20, :cond_48

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/wm/WindowStateAnimator;

    .restart local v36    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v39, v0

    if-eqz v32, :cond_45

    if-nez v28, :cond_45

    const/16 v38, 0x1

    :goto_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v6

    .restart local v6    # "a":Landroid/view/animation/Animation;
    if-eqz v6, :cond_46

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_46

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v38, :cond_43

    const-string v38, "WindowAnimator"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Starting keyguard exit animation on window "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v18, :cond_44

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    const/16 v18, 0x0

    :cond_44
    :goto_19
    add-int/lit8 v20, v20, -0x1

    goto :goto_17

    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_45
    const/16 v38, 0x0

    goto :goto_18

    .restart local v6    # "a":Landroid/view/animation/Animation;
    :cond_46
    if-eqz v18, :cond_44

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v38, v0

    if-eqz v38, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    const/16 v18, 0x0

    goto :goto_19

    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v18    # "first":Z
    .end local v36    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v38, v0

    if-eqz v38, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    :cond_48
    if-nez v32, :cond_4a

    if-eqz v31, :cond_4a

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v38, v0

    if-nez v38, :cond_4a

    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v38, :cond_49

    const-string v38, "WindowAnimator"

    const-string v39, "updateWindowsLocked: wallpaper animating away"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v39, v0

    invoke-interface/range {v38 .. v39}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v6

    .restart local v6    # "a":Landroid/view/animation/Animation;
    if-eqz v6, :cond_4a

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v38, v0

    if-eqz v38, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v42

    add-long v40, v40, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v42

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    :cond_4b
    :goto_1a
    return-void

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v38

    if-nez v38, :cond_4d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v40

    sub-long v38, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-lez v38, :cond_4b

    :cond_4d
    sget-boolean v38, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v38, :cond_4e

    const-string v38, "WindowAnimator"

    const-string v39, "Done with Keyguard exit animations."

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_1a
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_1

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method getDualScreenTransitionLocked()Lcom/android/server/wm/DualScreenTransition;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    return-object v0
.end method

.method getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    return-object v0
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v1, :cond_0

    const-string v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_0
.end method

.method removeDisplayLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/VirtualScreenManagerService;->cleanupVirtualScreen(I)V

    return-void
.end method

.method removeMultiWindowTransitionLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowTransition;->clearMultiWindowTransitionAnimation()V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    :cond_0
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 5
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_1

    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setDualScreenTransitionLocked(Lcom/android/server/wm/DualScreenTransition;)V
    .locals 0
    .param p1, "transit"    # Lcom/android/server/wm/DualScreenTransition;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    return-void
.end method

.method setMultiWindowTransitionLocked(ILcom/android/server/wm/MultiWindowTransition;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/MultiWindowTransition;

    .prologue
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_0
    return-void
.end method
