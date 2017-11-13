.class Lcom/android/incallui/view/CircleImageView$1;
.super Ljava/lang/Object;
.source "CircleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/CircleImageView;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/CircleImageView;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/incallui/view/CircleImageView$1;->this$0:Lcom/android/incallui/view/CircleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/incallui/view/CircleImageView$1;->this$0:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/incallui/view/CircleImageView;->animationProgress:F
    invoke-static {v1, v0}, Lcom/android/incallui/view/CircleImageView;->access$002(Lcom/android/incallui/view/CircleImageView;F)F

    .line 115
    iget-object v0, p0, Lcom/android/incallui/view/CircleImageView$1;->this$0:Lcom/android/incallui/view/CircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/view/CircleImageView;->invalidate()V

    .line 116
    return-void
.end method
