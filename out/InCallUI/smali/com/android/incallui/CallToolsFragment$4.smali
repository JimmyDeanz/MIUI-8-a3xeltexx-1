.class Lcom/android/incallui/CallToolsFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallToolsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallToolsFragment;->showToolPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallToolsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallToolsFragment;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/incallui/CallToolsFragment$4;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$4;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mInCallToolPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/CallToolsFragment;->access$1300(Lcom/android/incallui/CallToolsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    return-void
.end method
