.class Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView$2;)V
    .locals 0

    .prologue
    .line 3407
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3422
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 3416
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2602(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 3417
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3427
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 3411
    return-void
.end method
