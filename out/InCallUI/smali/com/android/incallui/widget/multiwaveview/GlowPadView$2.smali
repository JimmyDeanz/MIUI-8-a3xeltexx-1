.class Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;
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
    .line 170
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->ping()V

    .line 173
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$100(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$200(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F

    move-result v3

    # invokes: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$300(Lcom/android/incallui/widget/multiwaveview/GlowPadView;IFF)V

    .line 174
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    # invokes: Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->access$400(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    .line 175
    return-void
.end method
