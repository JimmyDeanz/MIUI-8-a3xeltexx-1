.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->throwAway()V
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
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeTrashAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$4700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeTrashTextAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$4800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;->this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeRedCircleAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->access$4900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    return-void
.end method
