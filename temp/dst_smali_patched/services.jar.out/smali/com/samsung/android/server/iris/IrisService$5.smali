.class Lcom/samsung/android/server/iris/IrisService$5;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService;->setEnrollLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1000(Lcom/samsung/android/server/iris/IrisService;)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I
    invoke-static {v2, v5}, Lcom/samsung/android/server/iris/IrisService;->access$1002(Lcom/samsung/android/server/iris/IrisService;I)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1000(Lcom/samsung/android/server/iris/IrisService;)I

    move-result v1

    .local v1, "progressValue":I
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    add-int/lit8 v3, v1, 0x64

    # setter for: Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I
    invoke-static {v2, v3}, Lcom/samsung/android/server/iris/IrisService;->access$1002(Lcom/samsung/android/server/iris/IrisService;I)I

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIris_percentage:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1100(Lcom/samsung/android/server/iris/IrisService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1000(Lcom/samsung/android/server/iris/IrisService;)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$5;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I
    invoke-static {v4}, Lcom/samsung/android/server/iris/IrisService;->access$1000(Lcom/samsung/android/server/iris/IrisService;)I

    move-result v4

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$5$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/iris/IrisService$5$1;-><init>(Lcom/samsung/android/server/iris/IrisService$5;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
