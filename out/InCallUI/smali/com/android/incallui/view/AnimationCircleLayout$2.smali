.class Lcom/android/incallui/view/AnimationCircleLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationCircleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/AnimationCircleLayout;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/AnimationCircleLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/AnimationCircleLayout;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$2;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$2;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$900(Lcom/android/incallui/view/AnimationCircleLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " circle anim cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$2;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$900(Lcom/android/incallui/view/AnimationCircleLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " circle anim end, mIsNeedTranslateY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$2;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z
    invoke-static {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$1000(Lcom/android/incallui/view/AnimationCircleLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$2;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z
    invoke-static {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->access$1000(Lcom/android/incallui/view/AnimationCircleLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$2;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->directAnimationEnd()V

    .line 192
    :cond_0
    return-void
.end method
