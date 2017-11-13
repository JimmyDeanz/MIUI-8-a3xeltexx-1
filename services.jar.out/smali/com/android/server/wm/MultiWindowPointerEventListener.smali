.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field static final NONE:I = 0x0

.field static final NOT_SUPPORT:I = 0x2

.field static final NOT_SUPPORT_CURRENT_SCREEN:I = 0x3

.field static final RESIZING:I = 0x1

.field static final TASK_UNSET:I = -0x1

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private final DEBUG:Z

.field private final DELTA_H_SCALE:F

.field private final DELTA_H_SCALE_TERMINATE:F

.field private final DELTA_H_SCALE_TERMINATE_TOP:F

.field private final DELTA_V_SCALE:F

.field private final DELTA_V_SCALE_TERMINATE:F

.field private final DELTA_V_SCALE_TERMINATE_TOP:F

.field private INTERPORATION:I

.field private final SAFE_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mApplicationName:Ljava/lang/CharSequence;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContorllerBoundaryY:I

.field private mControllerHeight:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mEdgeFlag:I

.field private mForceDismissGuide:Z

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHandler:Landroid/os/Handler;

.field private mHasSubWindow:Z

.field private mIsRunningTask:Z

.field private mIsSelectiveOrientationMode:Z

.field private mIsSplitWindow:Z

.field private mLastX:I

.field private mLastY:I

.field private mMaxDesktopScale:F

.field private mMaxScale:F

.field private mMinDesktopScale:F

.field private mMinScale:F

.field private mMoved:Z

.field private mResizeState:I

.field private mScreenHeight:I

.field private mScreenRatio:F

.field private mScreenWidth:I

.field private mSelectiveOrientationHeight:I

.field private mSelectiveOrientationWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStatusBarHeight:I

.field private mTaskId:I

.field private mTerminate:Z

.field private mValidMotion:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWasTargetChecked:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v2, "MultiWindowConverter"

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->TAG:Ljava/lang/String;

    .line 78
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DEBUG:Z

    .line 79
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    .line 81
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE:F

    .line 82
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE:F

    .line 83
    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE:F

    .line 84
    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE:F

    .line 85
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE_TOP:F

    .line 86
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE_TOP:F

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    .line 113
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 115
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 139
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 140
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowPointerEventListener;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/MultiWindowPointerEventListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    return p1
.end method

.method private adjustFloatingStackBound(Landroid/graphics/Rect;II)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mControllerHeight:I

    add-int v0, v2, v3

    .line 738
    .local v0, "boundaryX":I
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContorllerBoundaryY:I

    .line 739
    .local v1, "boundaryY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v3, p2, v0

    if-le v2, v3, :cond_2

    .line 740
    sub-int v2, p2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 744
    :cond_0
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v1

    if-le v2, v3, :cond_3

    .line 745
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v3, p3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 749
    :cond_1
    :goto_1
    return-void

    .line 741
    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_0

    .line 742
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 746
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarHeight:I

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mControllerHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 747
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarHeight:I

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mControllerHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method private calcPosX(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 432
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 433
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return p1

    .line 435
    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int p1, v0, p1

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private calcPosY(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 414
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    .line 415
    .local v1, "minScale":F
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    .line 422
    .local v0, "maxScale":F
    int-to-float v2, p2

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 423
    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 428
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return p2

    .line 425
    .restart local p2    # "y":I
    :cond_1
    int-to-float v2, p2

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 426
    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0
.end method

.method private findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .locals 17
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 826
    move/from16 v0, p1

    float-to-int v11, v0

    .line 827
    .local v11, "x":I
    move/from16 v0, p2

    float-to-int v12, v0

    .line 828
    .local v12, "y":I
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    .line 829
    .local v7, "touchableRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14

    .line 830
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 831
    .local v10, "windows":Lcom/android/server/wm/WindowList;
    const/4 v6, 0x0

    .line 832
    .local v6, "tempWin":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_13

    .line 833
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 834
    .local v9, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "MultiWindowConverter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "finding target window : ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 837
    .local v3, "flags":I
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 838
    .local v8, "type":I
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 840
    .local v5, "multiWindowFlags":I
    const/16 v13, 0x7d0

    if-ne v8, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 843
    const/4 v9, 0x0

    monitor-exit v14

    .line 955
    .end local v3    # "flags":I
    .end local v5    # "multiWindowFlags":I
    .end local v8    # "type":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return-object v9

    .line 847
    .restart local v3    # "flags":I
    .restart local v5    # "multiWindowFlags":I
    .restart local v8    # "type":I
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    const/16 v13, 0x7d0

    if-ne v8, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->isSharedDeviceKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 850
    const-string v13, "MultiWindowConverter"

    const-string v15, "Pop up view is blocked by Shared device"

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_1

    .line 954
    .end local v3    # "flags":I
    .end local v4    # "i":I
    .end local v5    # "multiWindowFlags":I
    .end local v6    # "tempWin":Lcom/android/server/wm/WindowState;
    .end local v8    # "type":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    .end local v10    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 855
    .restart local v3    # "flags":I
    .restart local v4    # "i":I
    .restart local v5    # "multiWindowFlags":I
    .restart local v6    # "tempWin":Lcom/android/server/wm/WindowState;
    .restart local v8    # "type":I
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    .restart local v10    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-nez v13, :cond_4

    .line 832
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 860
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v13

    if-nez v13, :cond_3

    .line 864
    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_3

    .line 868
    and-int/lit8 v13, v3, 0x8

    if-nez v13, :cond_3

    .line 872
    const/16 v13, 0x82f

    if-ne v8, v13, :cond_5

    .line 873
    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_1

    .line 875
    :cond_5
    const/16 v13, 0x89b

    if-ne v8, v13, :cond_6

    .line 876
    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_1

    .line 879
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/android/server/wm/WindowManagerService;->canRequestMultiWindowTransition(I)Z

    move-result v2

    .line 880
    .local v2, "canChangeMultiWindowStyle":Z
    iget-boolean v13, v9, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v13, :cond_7

    if-nez v2, :cond_8

    .line 885
    :cond_7
    const-string v13, "MultiWindowConverter"

    const-string v15, "Skip changing to pen window because multi window transition is running."

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v13, "MultiWindowConverter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "win.mMultiWindowStyleChanging="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v9, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " canChangeMultiWindowStyle="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v9, 0x0

    monitor-exit v14

    goto/16 :goto_1

    .line 893
    :cond_8
    and-int/lit16 v13, v5, 0x80

    if-eqz v13, :cond_a

    .line 894
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 895
    .local v1, "bound":Landroid/graphics/Rect;
    if-eqz v1, :cond_9

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 899
    :cond_9
    monitor-exit v14

    goto/16 :goto_1

    .line 902
    .end local v1    # "bound":Landroid/graphics/Rect;
    :cond_a
    const/4 v13, 0x2

    if-eq v8, v13, :cond_b

    const/4 v13, 0x1

    if-eq v8, v13, :cond_b

    .line 904
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_3

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_3

    const/16 v13, 0x7d0

    if-lt v8, v13, :cond_3

    const/16 v13, 0xbb7

    if-gt v8, v13, :cond_3

    .line 908
    const/4 v9, 0x0

    monitor-exit v14

    goto/16 :goto_1

    .line 913
    :cond_b
    if-eqz p3, :cond_c

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v15, -0x80000000

    and-int/2addr v13, v15

    if-nez v13, :cond_3

    .line 920
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 921
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 922
    .restart local v1    # "bound":Landroid/graphics/Rect;
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 924
    move-object v6, v9

    goto/16 :goto_2

    .line 927
    .end local v1    # "bound":Landroid/graphics/Rect;
    :cond_d
    if-eqz v6, :cond_f

    .line 928
    iget-object v13, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v15, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v13, v15, :cond_e

    .line 929
    monitor-exit v14

    move-object v9, v6

    goto/16 :goto_1

    .line 931
    :cond_e
    move-object v6, v9

    .line 935
    :cond_f
    const/4 v13, 0x2

    if-eq v8, v13, :cond_10

    const/4 v13, 0x1

    if-ne v8, v13, :cond_11

    .line 937
    :cond_10
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    const/high16 v15, 0x200000

    invoke-virtual {v13, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 939
    const-string v13, "MultiWindowConverter"

    const-string v15, "An activity with OPTION_FULLSCREEN_ONLY doesn\'t support the multi-window"

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    monitor-exit v14

    goto/16 :goto_1

    .line 946
    :cond_11
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 947
    invoke-virtual {v7, v11, v12}, Landroid/graphics/Region;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 948
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v15, 0x20000000

    and-int/2addr v13, v15

    if-eqz v13, :cond_12

    .line 949
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    .line 951
    :cond_12
    monitor-exit v14

    goto/16 :goto_1

    .line 954
    .end local v2    # "canChangeMultiWindowStyle":Z
    .end local v3    # "flags":I
    .end local v5    # "multiWindowFlags":I
    .end local v8    # "type":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_13
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 443
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 444
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "parts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    move-object v1, v8

    .line 460
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 447
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 449
    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 450
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 451
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 452
    .local v1, "appName":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 453
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MultiWindowConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getApplicationName is error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    .line 460
    goto :goto_0
.end method

.method private isCancelArea(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 752
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    .line 758
    .local v1, "maxScale":F
    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 759
    .local v0, "limitHeight":I
    if-ge p2, v0, :cond_0

    .line 760
    const/4 v2, 0x1

    .line 762
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTerminativeArea(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 766
    const v0, 0x3e051eb8    # 0.13f

    .line 767
    .local v0, "dh":F
    const v2, 0x3e3851ec    # 0.18f

    .line 768
    .local v2, "dv":F
    const v1, 0x3e570a3d    # 0.21f

    .line 769
    .local v1, "dht":F
    const v3, 0x3db851ec    # 0.09f

    .line 771
    .local v3, "dvt":F
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v5, v6, :cond_0

    .line 772
    const v0, 0x3db851ec    # 0.09f

    .line 773
    const v2, 0x3e570a3d    # 0.21f

    .line 774
    const v1, 0x3e3851ec    # 0.18f

    .line 775
    const v3, 0x3e051eb8    # 0.13f

    .line 778
    :cond_0
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v5, :sswitch_data_0

    .line 801
    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 780
    :sswitch_0
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-ge p1, v5, :cond_2

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-le p2, v5, :cond_2

    .line 781
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    :cond_2
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    if-le p1, v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-ge p2, v5, :cond_1

    .line 785
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 791
    :sswitch_1
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    sub-float v6, v7, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le p1, v5, :cond_3

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-le p2, v5, :cond_3

    .line 792
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    :cond_3
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    sub-float v6, v7, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge p1, v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-ge p2, v5, :cond_1

    .line 796
    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private isValidMotion(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 805
    const v0, 0x3d8f5c29    # 0.07f

    .line 806
    .local v0, "dh":F
    const v1, 0x3d4ccccd    # 0.05f

    .line 807
    .local v1, "dv":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_0

    .line 808
    const v0, 0x3d4ccccd    # 0.05f

    .line 809
    const v1, 0x3d8f5c29    # 0.07f

    .line 811
    :cond_0
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v2, v4

    .line 812
    .local v2, "limitHeight":I
    if-ge p2, v2, :cond_2

    .line 818
    :cond_1
    :goto_0
    return v3

    .line 815
    :cond_2
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_1

    .line 818
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setStackBoundOffset(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 358
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 359
    .local v0, "di":Landroid/view/DisplayInfo;
    iget v5, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 360
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    if-eqz v5, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 363
    .local v1, "hScale":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 364
    .local v4, "vScale":F
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 365
    .local v2, "offsetX":I
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v3, v5

    .line 367
    .local v3, "offsetY":I
    neg-int v5, v2

    neg-int v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private showFullScreenGuide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 403
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v0, :sswitch_data_0

    .line 411
    :goto_0
    return-void

    .line 405
    :sswitch_0
    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    .line 408
    :sswitch_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private showGuide(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 664
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int v2, v4, p1

    .line 665
    .local v2, "width":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int v0, v4, p2

    .line 666
    .local v0, "height":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_2

    const/4 v1, 0x1

    .line 670
    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_0

    if-nez p2, :cond_0

    .line 671
    if-nez v1, :cond_3

    .line 672
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 682
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 683
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 685
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 687
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v4, :sswitch_data_0

    .line 700
    :goto_2
    return-void

    .end local v1    # "isLandscape":Z
    :cond_2
    move v1, v3

    .line 666
    goto :goto_0

    .line 674
    .restart local v1    # "isLandscape":Z
    :cond_3
    if-nez p1, :cond_4

    .line 675
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 677
    :cond_4
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v5

    goto :goto_1

    .line 689
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 692
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 694
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 696
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v3, p2, p1, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private showMovingGuide(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 703
    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationWidth:I

    .line 704
    .local v2, "width":I
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationHeight:I

    .line 705
    .local v0, "height":I
    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    .line 709
    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    .line 710
    if-nez v1, :cond_3

    .line 711
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 721
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 722
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 725
    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v3, :sswitch_data_0

    .line 733
    :goto_2
    return-void

    .line 705
    .end local v1    # "isLandscape":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 713
    .restart local v1    # "isLandscape":Z
    :cond_3
    if-nez p1, :cond_4

    .line 714
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 716
    :cond_4
    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v2, v3, v4

    goto :goto_1

    .line 727
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 730
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    sub-int v4, p1, v2

    invoke-virtual {v3, v4, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public canBeResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    if-nez p1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v2

    .line 467
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 468
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move v1, v3

    .line 472
    .local v1, "notSupport":Z
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    .line 476
    goto :goto_0

    .end local v1    # "notSupport":Z
    :cond_4
    move v1, v2

    .line 468
    goto :goto_1
.end method

.method public dismissGuide(Z)V
    .locals 3
    .param p1, "notForce"    # Z

    .prologue
    const/4 v1, 0x0

    .line 373
    if-nez p1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideViewAttached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    .line 379
    const-string v0, "MultiWindowConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissGuide() : to dissmis guide by WindowManagerService while relayouting window, mForceDismissGuide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 394
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 395
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 396
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    goto :goto_0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 144
    new-instance v1, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/16 v3, 0x8d5

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 145
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 146
    new-instance v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    .line 151
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050305

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContorllerBoundaryY:I

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108059b

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mControllerHeight:I

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarHeight:I

    .line 163
    .end local v0    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 154
    .restart local v0    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidMotion()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v4, v0, 0xff

    .line 178
    .local v4, "action":I
    if-nez v4, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 180
    .local v8, "dInfo":Landroid/view/DisplayInfo;
    iget v0, v8, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    .line 181
    iget v0, v8, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    .line 185
    .end local v8    # "dInfo":Landroid/view/DisplayInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    if-eqz v4, :cond_3

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 197
    :cond_3
    if-nez v4, :cond_4

    .line 198
    const-string v17, "MultiWindowConverter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onPointerEvent() ACTION_DOWN, mForceDismissGuide : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_4
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 200
    const-string v17, "MultiWindowConverter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onPointerEvent() ACTION_MOVE, mForceDismissGuide : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_5
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    .line 212
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 213
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->startResizing(Lcom/android/server/wm/WindowState;)Z

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    .line 216
    const-string v17, "MultiWindowConverter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Start to resize multiwindow: mResizing="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",flag="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    :cond_6
    const/16 v17, 0x0

    goto :goto_1

    .line 220
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 221
    .local v15, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 223
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    move/from16 v17, v0

    sub-int v17, v17, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 224
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isTerminativeArea(II)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v17, :cond_1

    .line 227
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidMotion(II)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-eqz v17, :cond_1

    .line 230
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 235
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/SystemVibrator;->isEnableIntensity()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v17, v0

    const v18, 0xc369

    const/16 v19, -0x1

    const/16 v20, 0x0

    sget-object v21, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual/range {v17 .. v21}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 239
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 242
    :cond_c
    new-instance v7, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x103012b

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 243
    .local v7, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 253
    :goto_2
    sget-object v17, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 254
    sget-object v17, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 255
    const-string v17, "MultiWindowConverter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not supported popup window"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    goto/16 :goto_0

    .line 245
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040be7

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    sput-object v17, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    goto :goto_2

    .line 249
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040be8

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    sput-object v17, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    goto :goto_2

    .line 260
    .end local v7    # "context":Landroid/content/Context;
    :cond_d
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow()Z

    move-result v17

    if-nez v17, :cond_e

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 262
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    goto/16 :goto_0

    .line 265
    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    goto/16 :goto_0

    .line 269
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isCancelArea(II)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 271
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    goto/16 :goto_0

    .line 275
    :cond_10
    sget-boolean v17, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 276
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 277
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showMovingGuide(II)V

    goto/16 :goto_0

    .line 281
    :cond_11
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 282
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosY(II)I

    move-result v6

    .line 283
    .local v6, "adjustY":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosX(II)I

    move-result v5

    .line 284
    .local v5, "adjustX":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    .line 291
    .local v9, "minScale":F
    move/from16 v0, v16

    if-eq v6, v0, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_12

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 296
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto/16 :goto_0

    .line 294
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto :goto_3

    .line 300
    .end local v5    # "adjustX":I
    .end local v6    # "adjustY":I
    .end local v9    # "minScale":F
    .end local v15    # "x":I
    .end local v16    # "y":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 301
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/SystemVibrator;->isEnableIntensity()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v17, v0

    const v18, 0xc369

    const/16 v19, -0x1

    const/16 v20, 0x0

    sget-object v21, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual/range {v17 .. v21}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 305
    :cond_13
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 307
    .local v11, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 315
    .local v12, "tmpRect":Landroid/graphics/Rect;
    sget-boolean v17, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 316
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 317
    .local v13, "tmpScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 318
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustFloatingStackBound(Landroid/graphics/Rect;II)V

    .line 321
    .end local v13    # "tmpScreen":Landroid/graphics/Rect;
    :cond_14
    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 322
    const/16 v17, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 323
    const/16 v17, 0x800

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/android/server/wm/WindowManagerService;->changeMultiWindowStyle(Lcom/android/server/wm/AppWindowToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    .line 327
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 328
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/android/server/am/MultiWindowFacadeService;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 329
    const-string v17, "MultiWindowConverter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "moveOnlySpecificTaskToFront - style: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    .line 331
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 334
    :cond_15
    const/4 v10, 0x0

    .line 335
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    .line 337
    .local v14, "w":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_16

    .line 338
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v10

    .line 341
    .end local v14    # "w":Lcom/android/server/wm/WindowState;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "GEST"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v17, "MultiWindowConverter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MultiWindow changing is finished by gesture. app:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",bound="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "tmpRect":Landroid/graphics/Rect;
    :cond_17
    :pswitch_5
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    .line 347
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    .line 348
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 349
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    .line 350
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    .line 351
    const-string v17, "MultiWindowConverter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MultiWindow changing is ended by gesture.:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showMultiWindowGestureHelp()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->showMultiWindowGestureHelp()V

    .line 960
    return-void
.end method

.method public startResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 25
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    const-string v20, "MultiWindowConverter"

    const-string v21, "The top window does not support multi-window"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 483
    const/16 v20, 0x0

    .line 660
    :goto_0
    return v20

    .line 486
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v15

    .line 487
    .local v15, "stack":Lcom/android/server/wm/TaskStack;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 490
    const/16 v17, 0x0

    .line 491
    .local v17, "taskOfThisWindow":Lcom/android/server/wm/Task;
    if-eqz v15, :cond_1

    .line 492
    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "taskOfThisWindow":Lcom/android/server/wm/Task;
    check-cast v17, Lcom/android/server/wm/Task;

    .line 494
    .restart local v17    # "taskOfThisWindow":Lcom/android/server/wm/Task;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_1

    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 498
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 500
    const-string v20, "MultiWindowConverter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "This window does not support multiwindow. It may be the ResolverActivity. win="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 506
    :cond_1
    if-eqz v15, :cond_2

    iget v0, v15, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 507
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 508
    const-string v20, "MultiWindowConverter"

    const-string v21, "MultiWindow Gesture is not supported with launcher"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 512
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/high16 v21, 0x4000000

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 513
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 514
    const-string v20, "MultiWindowConverter"

    const-string v21, "MultiWindow Gesture is not supported with recents multi window"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 517
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 518
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 519
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_5

    .line 520
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 521
    .local v19, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/high16 v22, 0x4000000

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 523
    const-string v20, "MultiWindowConverter"

    const-string v22, "MultiWindow Gesture is not supported with recents multi window"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 v20, 0x0

    monitor-exit v21

    goto/16 :goto_0

    .line 527
    .end local v8    # "i":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    .end local v19    # "ws":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 519
    .restart local v8    # "i":I
    .restart local v18    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v19    # "ws":Lcom/android/server/wm/WindowState;
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 527
    .end local v19    # "ws":Lcom/android/server/wm/WindowState;
    :cond_5
    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_8

    const/4 v7, 0x1

    .line 531
    .local v7, "hasDisableFlag":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getCoverStateSwitch()Z

    move-result v20

    if-nez v20, :cond_9

    const/4 v9, 0x1

    .line 533
    .local v9, "isCoverClosed":Z
    :goto_3
    if-nez v7, :cond_6

    if-eqz v9, :cond_a

    .line 534
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 536
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 537
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 538
    const-string v20, "MultiWindowConverter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "failed to change floating style, win="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", hasDisableFlag="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isCoverClosed="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 530
    .end local v7    # "hasDisableFlag":Z
    .end local v9    # "isCoverClosed":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 531
    .restart local v7    # "hasDisableFlag":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 544
    .restart local v9    # "isCoverClosed":Z
    :cond_a
    const/4 v4, 0x0

    .line 545
    .local v4, "currentTask":Lcom/android/server/wm/Task;
    const/4 v10, 0x0

    .line 546
    .local v10, "mainWindowTitle":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 548
    .local v5, "currentTaskInfo":Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 549
    :try_start_2
    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v4, v0

    .line 550
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v5

    .line 551
    iget-object v0, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 562
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_c

    .line 563
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 564
    .local v13, "parts":[Ljava/lang/String;
    if-eqz v13, :cond_c

    array-length v0, v13

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1a

    new-instance v22, Landroid/content/ComponentName;

    const/16 v23, 0x0

    aget-object v23, v13, v23

    const/16 v24, 0x1

    aget-object v24, v13, v24

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/wm/WindowManagerService;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 567
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 568
    const-string v20, "MultiWindowConverter"

    const-string v21, "MultiWindow Gesture is not supported with DISABLE_TRAY_BAR"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 553
    .end local v13    # "parts":[Ljava/lang/String;
    :cond_b
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    goto :goto_4

    .line 555
    :catch_0
    move-exception v6

    .line 556
    .local v6, "e":Ljava/lang/Exception;
    const-string v20, "TAG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mainWindowTitle is error:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_4

    .line 573
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 574
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v20, 0x1000000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_d

    const/high16 v20, 0x200000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-nez v20, :cond_d

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-nez v20, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_f

    :cond_d
    const/4 v12, 0x1

    .line 579
    .local v12, "notSupport":Z
    :goto_5
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 580
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 581
    new-instance v20, Landroid/graphics/Point;

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    .line 584
    :cond_e
    if-eqz v12, :cond_10

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 587
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 588
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 590
    const-string v20, "MultiWindowConverter"

    const-string v21, "This application or window do not support multiwindow"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 574
    .end local v12    # "notSupport":Z
    :cond_f
    const/4 v12, 0x0

    goto :goto_5

    .line 594
    .restart local v12    # "notSupport":Z
    :cond_10
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 597
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 599
    const-string v20, "MultiWindowConverter"

    const-string v21, "MultiWindow Gesture is not supported with ISOLATED or FullScreenOnly"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 602
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 605
    :cond_11
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 606
    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v20

    iget v0, v4, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/MultiWindowFacadeService;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 607
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    .line 608
    iget v0, v4, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 611
    :cond_12
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 612
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 614
    const-string v20, "MultiWindowConverter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MultiWindow is changing by gesture:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sget-boolean v20, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v20, :cond_14

    .line 629
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    .line 631
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v2

    .line 632
    .local v2, "appRequestedOrientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 633
    .local v3, "currentConfigOrientation":I
    invoke-static {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v16

    .line 636
    .local v16, "targetConfigOrientation":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move/from16 v0, v16

    if-eq v0, v3, :cond_13

    .line 637
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    .line 638
    const/4 v14, 0x0

    .line 645
    .local v14, "selectivePenWindowScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e00f9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x447a0000    # 1000.0f

    div-float v14, v20, v21

    .line 648
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationWidth:I

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationHeight:I

    .line 651
    .end local v14    # "selectivePenWindowScale":F
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 652
    const-string v20, "MultiWindowConverter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "target win= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " appRequestedOrientation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mIsSelectiveOrientationMode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v2    # "appRequestedOrientation":I
    .end local v3    # "currentConfigOrientation":I
    .end local v16    # "targetConfigOrientation":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 660
    const/16 v20, 0x1

    goto/16 :goto_0
.end method
