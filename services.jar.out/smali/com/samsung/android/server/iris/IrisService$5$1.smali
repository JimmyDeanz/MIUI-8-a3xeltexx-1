.class Lcom/samsung/android/server/iris/IrisService$5$1;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$5;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$5$1;->this$1:Lcom/samsung/android/server/iris/IrisService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 703
    const-string/jumbo v0, "s2k"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "s2k animValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$5$1;->this$1:Lcom/samsung/android/server/iris/IrisService$5;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_left:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$1200(Lcom/samsung/android/server/iris/IrisService;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 705
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$5$1;->this$1:Lcom/samsung/android/server/iris/IrisService$5;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_right:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$1300(Lcom/samsung/android/server/iris/IrisService;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 706
    return-void
.end method
