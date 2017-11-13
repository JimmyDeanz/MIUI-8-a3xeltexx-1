.class Lcom/android/incallui/CallCardFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->showAnswerIncomingBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$500(Lcom/android/incallui/CallCardFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 907
    return-void
.end method
