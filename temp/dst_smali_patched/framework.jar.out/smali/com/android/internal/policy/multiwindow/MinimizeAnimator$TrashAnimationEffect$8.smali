.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrashScaleAlphaAnimation(ZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

.field final synthetic val$removeTask:Z

.field final synthetic val$touchableRegion:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;ZLandroid/graphics/Rect;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iput-boolean p2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->val$removeTask:Z

    iput-object p3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->val$touchableRegion:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::hideTrashScaleAlphaAnimation() End of ScaleUpAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrash()V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trash:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$5100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$5200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->val$removeTask:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$5300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBodyForRemoveAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$5400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->hide()V
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iget-object v1, v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->val$touchableRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;->val$touchableRegion:Landroid/graphics/Rect;

    const/16 v2, 0x64

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::hideTrashScaleAlphaAnimation() Start of ScaleUpAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
