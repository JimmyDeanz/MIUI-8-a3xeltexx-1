.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$5;
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
    .line 646
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$5;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$5;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    # getter for: Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->mPrimaryName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->access$000(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    return-void
.end method
