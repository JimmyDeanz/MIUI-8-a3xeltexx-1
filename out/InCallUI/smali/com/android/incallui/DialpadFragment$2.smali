.class Lcom/android/incallui/DialpadFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/DialpadFragment;->showDialer()V
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
    .line 461
    iput-object p1, p0, Lcom/android/incallui/DialpadFragment$2;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment$2;->this$0:Lcom/android/incallui/DialpadFragment;

    # getter for: Lcom/android/incallui/DialpadFragment;->mDialPad:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/DialpadFragment;->access$000(Lcom/android/incallui/DialpadFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    return-void
.end method
