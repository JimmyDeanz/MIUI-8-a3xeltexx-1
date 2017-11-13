.class Lcom/android/incallui/CallButtonFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->startCallButtonAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 597
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 577
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 579
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->isVideoCall()Z

    move-result v1

    .line 580
    .local v1, "isVideoCall":Z
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mAudioButtonLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/CallButtonFragment;->access$500(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/CallButtonFragment;->access$600(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mToolsButtonLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/CallButtonFragment;->access$700(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->isServiceNumber()Z

    move-result v0

    .line 585
    .local v0, "isServiceNumber":Z
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 586
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2, v6}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 590
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;
    invoke-static {v2}, Lcom/android/incallui/CallButtonFragment;->access$800(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/JeejenInCallScreenLayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;
    invoke-static {v2}, Lcom/android/incallui/CallButtonFragment;->access$800(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/JeejenInCallScreenLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->updateToggleDialpadState(Z)V

    .line 593
    :cond_0
    return-void

    .end local v0    # "isServiceNumber":Z
    :cond_1
    move v2, v4

    .line 580
    goto :goto_0

    :cond_2
    move v3, v4

    .line 582
    goto :goto_1

    .line 588
    .restart local v0    # "isServiceNumber":Z
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$9;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2, v6}, Lcom/android/incallui/CallButtonFragment;->displayToolPanel(Z)V

    goto :goto_2
.end method
