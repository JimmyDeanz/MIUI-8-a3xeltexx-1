.class Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$500(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$500(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v1

    # invokes: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$600(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)V

    .line 189
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # setter for: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$502(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)I

    .line 190
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # invokes: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$700(Lcom/android/incallui/widget/multiwaveview/GlowPadView;ZZ)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # setter for: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$802(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Z)Z

    .line 193
    return-void
.end method
