.class Lcom/android/incallui/view/AnimationCircleLayout$1;
.super Ljava/lang/Object;
.source "AnimationCircleLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 173
    iput-object p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 177
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    iget-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTargetY:F
    invoke-static {v2}, Lcom/android/incallui/view/AnimationCircleLayout;->access$100(Lcom/android/incallui/view/AnimationCircleLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mOriginY:F
    invoke-static {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->access$200(Lcom/android/incallui/view/AnimationCircleLayout;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    # setter for: Lcom/android/incallui/view/AnimationCircleLayout;->cdy:F
    invoke-static {v1, v2}, Lcom/android/incallui/view/AnimationCircleLayout;->access$002(Lcom/android/incallui/view/AnimationCircleLayout;F)F

    .line 178
    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    iget-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTargetR:F
    invoke-static {v2}, Lcom/android/incallui/view/AnimationCircleLayout;->access$400(Lcom/android/incallui/view/AnimationCircleLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mOriginR:F
    invoke-static {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->access$500(Lcom/android/incallui/view/AnimationCircleLayout;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    # setter for: Lcom/android/incallui/view/AnimationCircleLayout;->cdr:F
    invoke-static {v1, v2}, Lcom/android/incallui/view/AnimationCircleLayout;->access$302(Lcom/android/incallui/view/AnimationCircleLayout;F)F

    .line 179
    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    iget-object v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mTargetX:F
    invoke-static {v2}, Lcom/android/incallui/view/AnimationCircleLayout;->access$700(Lcom/android/incallui/view/AnimationCircleLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    # getter for: Lcom/android/incallui/view/AnimationCircleLayout;->mOriginX:F
    invoke-static {v3}, Lcom/android/incallui/view/AnimationCircleLayout;->access$800(Lcom/android/incallui/view/AnimationCircleLayout;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    # setter for: Lcom/android/incallui/view/AnimationCircleLayout;->cdx:F
    invoke-static {v1, v2}, Lcom/android/incallui/view/AnimationCircleLayout;->access$602(Lcom/android/incallui/view/AnimationCircleLayout;F)F

    .line 180
    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$1;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/AnimationCircleLayout;->invalidate()V

    .line 181
    return-void
.end method
