.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartCoverAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playCircleTranslateInAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$3;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x64

    .line 591
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$3;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$3;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 593
    return-void
.end method
