.class Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierTouchGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method private constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;Lcom/android/server/display/MagnifierSurfaceControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .param p2, "x1"    # Lcom/android/server/display/MagnifierSurfaceControl$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl$Border;->injectAccessibilityMotionEvent(IZ)V
    invoke-static {v0, v1, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$4500(Lcom/android/server/display/MagnifierSurfaceControl$Border;IZ)V

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
