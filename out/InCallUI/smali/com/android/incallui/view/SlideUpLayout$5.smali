.class Lcom/android/incallui/view/SlideUpLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideUpLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/SlideUpLayout;->playCircleTranslateInAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SlideUpLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SlideUpLayout;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/incallui/view/SlideUpLayout$5;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x64

    .line 642
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout$5;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    iget-object v0, v0, Lcom/android/incallui/view/SlideUpLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout$5;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    iget-object v0, v0, Lcom/android/incallui/view/SlideUpLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 644
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout$5;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    # getter for: Lcom/android/incallui/view/SlideUpLayout;->isVideoCall:Z
    invoke-static {v0}, Lcom/android/incallui/view/SlideUpLayout;->access$100(Lcom/android/incallui/view/SlideUpLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout$5;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    const/4 v1, 0x1

    # invokes: Lcom/android/incallui/view/SlideUpLayout;->showAnswerVoiceButton(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/view/SlideUpLayout;->access$200(Lcom/android/incallui/view/SlideUpLayout;Z)V

    .line 639
    :cond_0
    return-void
.end method
