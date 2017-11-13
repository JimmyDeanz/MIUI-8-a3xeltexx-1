.class Lcom/android/incallui/view/AnimationCircleLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationCircleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/AnimationCircleLayout;->getTranslateYAnimator()Landroid/animation/Animator;
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
    .line 212
    iput-object p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$3;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$3;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$900(Lcom/android/incallui/view/AnimationCircleLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TranslateY Anim cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$3;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$900(Lcom/android/incallui/view/AnimationCircleLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TranslateY Anim end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$3;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnimationCircleLayout;->directAnimationEnd()V

    .line 227
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$3;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTagForLog:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$900(Lcom/android/incallui/view/AnimationCircleLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TranslateY Anim start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    return-void
.end method
