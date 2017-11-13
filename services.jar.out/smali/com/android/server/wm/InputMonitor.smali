.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field mEmptyRegion:Landroid/graphics/Region;

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 94
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mEmptyRegion:Landroid/graphics/Region;

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 195
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 197
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 202
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 8
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    .line 208
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 209
    and-int/lit8 v5, p3, 0x28

    if-nez v5, :cond_0

    const/4 v1, 0x1

    .line 213
    .local v1, "modal":Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 214
    .local v2, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v5, 0x800

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .line 215
    .local v4, "optionScale":Z
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    .line 218
    .local v3, "optionMinimized":Z
    if-eqz v1, :cond_1

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_1

    .line 220
    or-int/lit8 p3, p3, 0x20

    .line 298
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 324
    iget-object v5, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v6, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 337
    :goto_1
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 339
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsSamsungFlags:I

    .line 341
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 342
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 343
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 344
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v5

    iput-boolean v5, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 345
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 346
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 347
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_2
    iput-boolean v5, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 348
    iget v5, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 349
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 350
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mUid:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 351
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 353
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 354
    .local v0, "frame":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 355
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 356
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 357
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 373
    iget v5, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 377
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v5, v6

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 399
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 400
    return-void

    .line 209
    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v1    # "modal":Z
    .end local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v3    # "optionMinimized":Z
    .end local v4    # "optionScale":Z
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 328
    .restart local v1    # "modal":Z
    .restart local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v3    # "optionMinimized":Z
    .restart local v4    # "optionScale":Z
    :cond_1
    iget-object v5, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v5}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_1

    .line 347
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 379
    .restart local v0    # "frame":Landroid/graphics/Rect;
    :cond_3
    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v5, :cond_4

    .line 380
    iget v5, p2, Lcom/android/server/wm/WindowState;->mDssScale:F

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_3

    .line 383
    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_3
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 403
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 737
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 630
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 631
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 630
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 709
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 711
    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 621
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 622
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 621
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQuickAccess(IFF)V
    .locals 1
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQuickAccess(IFF)V

    .line 605
    return-void
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 13
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v8, 0x0

    .line 130
    .local v8, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 131
    .local v3, "aboveSystem":Z
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 132
    if-eqz p2, :cond_0

    .line 133
    :try_start_0
    iget-object v9, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v8, v0

    .line 134
    if-eqz v8, :cond_0

    .line 135
    iget-object v4, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 138
    :cond_0
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 139
    iget-object v9, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 142
    :cond_1
    if-eqz v8, :cond_3

    .line 143
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v11, 0x7d3

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    .line 151
    .local v5, "systemAlertLayer":I
    iget v9, v8, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v9, v5, :cond_2

    const/4 v3, 0x1

    .line 161
    .end local v5    # "systemAlertLayer":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v9, v4, v8, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 162
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    if-eqz v4, :cond_5

    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v9, :cond_5

    .line 168
    :try_start_1
    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 169
    .local v2, "abort":Z
    if-nez v2, :cond_6

    .line 172
    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v2    # "abort":Z
    :goto_1
    return-wide v10

    .line 151
    .restart local v5    # "systemAlertLayer":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 152
    .end local v5    # "systemAlertLayer":I
    :cond_3
    if-eqz v4, :cond_4

    .line 153
    :try_start_2
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to application "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 157
    :cond_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    :cond_5
    if-eqz v8, :cond_6

    .line 180
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v10, v10, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v6

    .line 182
    .local v6, "timeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-ltz v9, :cond_6

    .line 185
    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, v6

    goto :goto_1

    .line 187
    .end local v6    # "timeout":J
    :catch_0
    move-exception v9

    .line 190
    :cond_6
    :goto_2
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 174
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 567
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 536
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 541
    :cond_0
    monitor-exit v1

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyCoverAttachedChanged(JZ)V
    .locals 0
    .param p1, "whenNanos"    # J
    .param p3, "attached"    # Z

    .prologue
    .line 583
    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCoverSwitchStateChanged(JZ)V

    .line 589
    return-void
.end method

.method public notifyFoldingSwitchStateChanged(JI)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "isFolding"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyFoldingSwitchStateChanged(JI)V

    .line 744
    return-void
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .locals 0
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 578
    return-void
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 112
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 113
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 114
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 117
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 561
    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyPenSwitchChanged(JZ)V

    .line 573
    return-void
.end method

.method public notifyWrapAroundModeChanged(I)V
    .locals 1
    .param p1, "screenStatus"    # I

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->notifyWrapAroundModeChanged(I)V

    .line 749
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v1, 0x1

    .line 681
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    .line 686
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 687
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 689
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 692
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 698
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 700
    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 730
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 731
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 733
    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 678
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 673
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 674
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 676
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v3, 0x0

    .line 646
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_2

    .line 650
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1

    .line 651
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 658
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 659
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 661
    if-eqz p2, :cond_1

    .line 662
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 665
    :cond_1
    return-void

    .line 647
    :cond_2
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 410
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 720
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 722
    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 25
    .param p1, "force"    # Z

    .prologue
    .line 414
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_0

    .line 529
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 426
    const/4 v13, 0x0

    .line 429
    .local v13, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_3

    const/16 v16, 0x1

    .line 430
    .local v16, "inDrag":Z
    :goto_1
    if-eqz v16, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v15, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 435
    .local v15, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_4

    .line 436
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 443
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_5

    const/4 v11, 0x1

    .line 446
    .local v11, "addInputConsumerHandle":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 448
    .local v19, "numDisplays":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/InputMonitor;->mEmptyRegion:Landroid/graphics/Region;

    .line 450
    .local v12, "cursorWindowTouchableRegion":Landroid/graphics/Region;
    const/4 v14, 0x0

    .local v14, "displayNdx":I
    :goto_4
    move/from16 v0, v19

    if-ge v14, v0, :cond_10

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v23

    .line 461
    .local v23, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    .line 462
    .local v18, "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v10, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 465
    .local v10, "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .local v22, "winNdx":I
    :goto_6
    if-ltz v22, :cond_f

    .line 466
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 467
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v17, v0

    .line 468
    .local v17, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 469
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v17, :cond_2

    if-eqz v3, :cond_2

    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_7

    .line 465
    :cond_2
    :goto_7
    add-int/lit8 v22, v22, -0x1

    goto :goto_6

    .line 429
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v10    # "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v11    # "addInputConsumerHandle":Z
    .end local v12    # "cursorWindowTouchableRegion":Landroid/graphics/Region;
    .end local v14    # "displayNdx":I
    .end local v16    # "inDrag":Z
    .end local v17    # "inputChannel":Landroid/view/InputChannel;
    .end local v18    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v19    # "numDisplays":I
    .end local v22    # "winNdx":I
    .end local v23    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 438
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v16    # "inDrag":Z
    :cond_4
    const-string v2, "WindowManager"

    const-string v24, "Drag is in progress but there is no drag window handle."

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 443
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 462
    .restart local v11    # "addInputConsumerHandle":Z
    .restart local v12    # "cursorWindowTouchableRegion":Landroid/graphics/Region;
    .restart local v14    # "displayNdx":I
    .restart local v18    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .restart local v19    # "numDisplays":I
    .restart local v23    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    .line 473
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v10    # "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v17    # "inputChannel":Landroid/view/InputChannel;
    .restart local v22    # "winNdx":I
    :cond_7
    if-eqz v11, :cond_8

    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget v0, v10, Lcom/android/server/input/InputWindowHandle;->layer:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v2, v0, :cond_8

    .line 475
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 476
    const/4 v11, 0x0

    .line 479
    :cond_8
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 480
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v21, v0

    .line 481
    .local v21, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 483
    .local v6, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_b

    const/4 v8, 0x1

    .line 485
    .local v8, "hasFocus":Z
    :goto_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v2, v0, :cond_c

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    .line 488
    .local v7, "isVisible":Z
    :goto_9
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_9

    .line 491
    const/4 v13, 0x1

    .line 493
    :cond_9
    move-object/from16 v0, v18

    if-ne v4, v0, :cond_d

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_d

    if-nez v13, :cond_d

    const/4 v9, 0x1

    .line 496
    .local v9, "hasWallpaper":Z
    :goto_a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_e

    const/16 v20, 0x1

    .line 500
    .local v20, "onDefaultDisplay":Z
    :goto_b
    if-eqz v16, :cond_a

    if-eqz v7, :cond_a

    if-eqz v20, :cond_a

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_a
    move-object/from16 v2, p0

    .line 504
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 508
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_2

    .line 509
    const-string v2, "com.samsung.android.app.assistantmenu"

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Cursor"

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v12, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    goto/16 :goto_7

    .line 483
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v20    # "onDefaultDisplay":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_8

    .line 485
    .restart local v8    # "hasFocus":Z
    :cond_c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    goto :goto_9

    .line 493
    .restart local v7    # "isVisible":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_a

    .line 496
    .restart local v9    # "hasWallpaper":Z
    :cond_e
    const/16 v20, 0x0

    goto :goto_b

    .line 450
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v17    # "inputChannel":Landroid/view/InputChannel;
    .end local v21    # "privateFlags":I
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 517
    .end local v10    # "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v18    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v22    # "winNdx":I
    .end local v23    # "windows":Lcom/android/server/wm/WindowList;
    :cond_10
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_11

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v12}, Landroid/view/WindowManagerPolicy;->updateCursorWindowInputRect(Landroid/graphics/Region;)V

    .line 523
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 549
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 550
    :catch_0
    move-exception v0

    goto :goto_0
.end method
