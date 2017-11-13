.class Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;
.super Ljava/lang/Object;
.source "DesktopMultiPhoneWindow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopHeaderGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;
    .param p2, "x1"    # Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;-><init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .local v2, "touchP":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v2, v5, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledX:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->access$602(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;I)I

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mLastHandledY:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->access$702(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;I)I

    .end local v2    # "touchP":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    .local v0, "decor":Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;
    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->isPenWindowResizing()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    # getter for: Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->mIsTouchDown:Z
    invoke-static {v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->access$800(Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    sget-boolean v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DesktopMultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DesktopWindowHeader :: onLongPress() a decor is resizing or a event isn\'t down, event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v4, v4, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, "tempStackBound":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v4}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader$DesktopHeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v3, v1, v6}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
