.class Lcom/android/internal/widget/LockPatternView$6;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$startX:F

.field final synthetic val$startY:F

.field final synthetic val$state:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$targetX:F

.field final synthetic val$targetY:F


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$6;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$6;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    iput p3, p0, Lcom/android/internal/widget/LockPatternView$6;->val$startX:F

    iput p4, p0, Lcom/android/internal/widget/LockPatternView$6;->val$targetX:F

    iput p5, p0, Lcom/android/internal/widget/LockPatternView$6;->val$startY:F

    iput p6, p0, Lcom/android/internal/widget/LockPatternView$6;->val$targetY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 759
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 760
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$6;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$6;->val$startX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$6;->val$targetX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 761
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$6;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$6;->val$startY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$6;->val$targetY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 762
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$6;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 763
    return-void
.end method
