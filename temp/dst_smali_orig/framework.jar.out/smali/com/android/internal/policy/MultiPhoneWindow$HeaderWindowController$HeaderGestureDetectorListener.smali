.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Lcom/android/internal/policy/MultiPhoneWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
    .param p2, "x1"    # Lcom/android/internal/policy/MultiPhoneWindow$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)V

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
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$HeaderGestureDetectorListener;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    return-void
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
