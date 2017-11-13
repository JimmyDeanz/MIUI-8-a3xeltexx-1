.class Lcom/android/incallui/view/ArrowImageView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArrowImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/ArrowImageView;->playArrowMoveUpAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCancel:Z

.field final synthetic this$0:Lcom/android/incallui/view/ArrowImageView;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/ArrowImageView;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/incallui/view/ArrowImageView$3;->this$0:Lcom/android/incallui/view/ArrowImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/view/ArrowImageView$3;->isAnimationCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/ArrowImageView$3;->isAnimationCancel:Z

    .line 145
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView$3;->this$0:Lcom/android/incallui/view/ArrowImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 150
    iget-boolean v0, p0, Lcom/android/incallui/view/ArrowImageView$3;->isAnimationCancel:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView$3;->this$0:Lcom/android/incallui/view/ArrowImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/ArrowImageView;->playArrowRepeatTranslateAnimator(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView$3;->this$0:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 139
    iput-boolean v1, p0, Lcom/android/incallui/view/ArrowImageView$3;->isAnimationCancel:Z

    .line 140
    return-void
.end method
