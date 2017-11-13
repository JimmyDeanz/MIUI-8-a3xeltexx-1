.class Lcom/android/incallui/DialpadFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/DialpadFragment;->hideDialer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/DialpadFragment;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/incallui/DialpadFragment$3;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 491
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment$3;->this$0:Lcom/android/incallui/DialpadFragment;

    # getter for: Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/DialpadFragment;->access$000(Lcom/android/incallui/DialpadFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment$3;->this$0:Lcom/android/incallui/DialpadFragment;

    # getter for: Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/DialpadFragment;->access$000(Lcom/android/incallui/DialpadFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment$3;->this$0:Lcom/android/incallui/DialpadFragment;

    # getter for: Lcom/android/incallui/DialpadFragment;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/DialpadFragment;->access$100(Lcom/android/incallui/DialpadFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    return-void
.end method
