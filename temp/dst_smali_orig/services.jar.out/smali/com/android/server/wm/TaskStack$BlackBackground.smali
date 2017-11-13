.class Lcom/android/server/wm/TaskStack$BlackBackground;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackBackground"
.end annotation


# static fields
.field static final DEBUG_BG:Z = false

.field static final TAG_BG:Ljava/lang/String; = "BlackSurface"


# instance fields
.field mApplyMagnifiSpec:Z

.field mBaseWindow:Lcom/android/server/wm/WindowState;

.field mBlackSurface:Lcom/android/server/wm/DimLayer;

.field mBottomLayer:I

.field mBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field mLayer:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mShown:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DimLayer;

    const-string v1, "BlackBackground"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    iput v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    iput v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDisplayId:I

    return-void
.end method


# virtual methods
.method animateBlackBackground()V
    .locals 28

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack$BlackBackground;->hide()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v16

    .local v16, "isVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v13, 0x1

    .local v13, "isOpaqueWin":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    .local v11, "isMinimized":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v22

    if-nez v22, :cond_5

    const/4 v8, 0x1

    .local v8, "isAnimating":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v22

    if-eqz v22, :cond_6

    const/4 v14, 0x1

    .local v14, "isRotation":Z
    :goto_3
    const/4 v15, 0x0

    .local v15, "isTransparent":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v22

    if-nez v22, :cond_7

    const/4 v10, 0x1

    .local v10, "isDrawing":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    const/16 v17, 0x1

    .local v17, "isWaitingForMaximizeAnim":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v22

    if-eqz v22, :cond_9

    const/4 v12, 0x1

    .local v12, "isNormal":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    const/4 v9, 0x1

    .local v9, "isCameraRotation":Z
    :goto_7
    if-eqz v16, :cond_3

    if-nez v11, :cond_3

    if-nez v13, :cond_3

    if-nez v8, :cond_3

    if-nez v14, :cond_3

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    if-nez v15, :cond_3

    if-nez v17, :cond_3

    if-nez v12, :cond_3

    if-eqz v9, :cond_b

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack$BlackBackground;->hide()V

    goto/16 :goto_0

    .end local v8    # "isAnimating":Z
    .end local v9    # "isCameraRotation":Z
    .end local v10    # "isDrawing":Z
    .end local v11    # "isMinimized":Z
    .end local v12    # "isNormal":Z
    .end local v13    # "isOpaqueWin":Z
    .end local v14    # "isRotation":Z
    .end local v15    # "isTransparent":Z
    .end local v17    # "isWaitingForMaximizeAnim":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .restart local v11    # "isMinimized":Z
    .restart local v13    # "isOpaqueWin":Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .restart local v8    # "isAnimating":Z
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .restart local v14    # "isRotation":Z
    .restart local v15    # "isTransparent":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_4

    .restart local v10    # "isDrawing":Z
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_5

    .restart local v17    # "isWaitingForMaximizeAnim":Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_6

    .restart local v12    # "isNormal":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    .restart local v9    # "isCameraRotation":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    .local v21, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v22, v0

    if-lez v22, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    :cond_d
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    goto :goto_8

    .end local v21    # "w":Lcom/android/server/wm/WindowState;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    move/from16 v22, v0

    add-int/lit8 v6, v22, -0x1

    .local v6, "dimlayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v19, v0

    .local v19, "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    .local v20, "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mApplyMagnifiSpec:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    const/16 v18, 0x0

    .local v18, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v18

    :cond_f
    if-eqz v18, :cond_10

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Rect;->offset(II)V

    .end local v18    # "spec":Landroid/view/MagnificationSpec;
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v6, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    :cond_11
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const-wide/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto/16 :goto_0

    :cond_12
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskStack$BlackBackground;->mApplyMagnifiSpec:Z

    goto :goto_9
.end method

.method destroySurface()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    return-void
.end method

.method hide()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    :cond_0
    return-void
.end method

.method notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v0, v1, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method setBound(Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "applyMagnifiSpec"    # Z

    .prologue
    iput-boolean p2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mApplyMagnifiSpec:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/server/wm/TaskStack$BlackBackground;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
