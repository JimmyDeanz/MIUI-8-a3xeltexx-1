.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field final synthetic val$touchableRegion:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iput-object p2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->val$touchableRegion:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "minimizedBound":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->val$touchableRegion:Landroid/graphics/Rect;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->adjustMinimizedBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    invoke-static {v1, v2, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1702(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
