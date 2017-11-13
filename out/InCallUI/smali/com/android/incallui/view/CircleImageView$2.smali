.class Lcom/android/incallui/view/CircleImageView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/CircleImageView;->getTranslateInAnimatorSet(I)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/CircleImageView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/CircleImageView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/incallui/view/CircleImageView$2;->this$0:Lcom/android/incallui/view/CircleImageView;

    iput-object p2, p0, Lcom/android/incallui/view/CircleImageView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView$2;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    return-void
.end method
