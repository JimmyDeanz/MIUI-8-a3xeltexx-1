.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeMinimizedIconAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::removeMinimizedIconAnimation() End of AlphaAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::removeMinimizedIconAnimation() Start of AlphaAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
