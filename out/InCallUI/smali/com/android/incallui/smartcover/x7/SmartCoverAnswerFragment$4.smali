.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartCoverAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getTranslateInAnimatorSet(Lcom/android/incallui/view/CircleImageView;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

.field final synthetic val$view:Lcom/android/incallui/view/CircleImageView;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;Lcom/android/incallui/view/CircleImageView;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$4;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    iput-object p2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$4;->val$view:Lcom/android/incallui/view/CircleImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$4;->val$view:Lcom/android/incallui/view/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/CircleImageView;->setVisibility(I)V

    .line 625
    return-void
.end method
