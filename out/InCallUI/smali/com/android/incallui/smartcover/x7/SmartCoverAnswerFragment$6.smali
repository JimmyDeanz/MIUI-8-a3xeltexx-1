.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartCoverAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playCallerInfoTranslateIn()V
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
    .line 658
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    # getter for: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mLabelAndNumber:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->access$100(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    # getter for: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isMarkInfoNeedToShow:Z
    invoke-static {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->access$200(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    # invokes: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->playMarkInfoAnimator()V
    invoke-static {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->access$300(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$6;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->isCallInfoAnimFinished:Z
    invoke-static {v0, v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->access$402(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;Z)Z

    .line 666
    return-void
.end method
