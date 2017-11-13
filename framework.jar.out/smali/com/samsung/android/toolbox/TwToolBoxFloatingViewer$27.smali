.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1255
    const/4 v2, 0x1

    .line 1256
    .local v2, "keepGoing":Z
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    sub-int v0, v3, v6

    .line 1257
    .local v0, "deltaX":I
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    sub-int v1, v3, v6

    .line 1259
    .local v1, "deltaY":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1260
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1261
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V
    invoke-static {v3, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)V

    .line 1262
    const/4 v2, 0x0

    .line 1263
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1264
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 1265
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z
    invoke-static {v3, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5602(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1271
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    if-ge v3, v6, :cond_1

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    if-lez v0, :cond_5

    move v3, v4

    :goto_0
    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    .line 1272
    :cond_1
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v3

    if-lez v1, :cond_2

    move v5, v4

    :cond_2
    mul-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1274
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v5

    div-int v5, v0, v5

    # += operator for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I
    invoke-static {v3, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5212(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 1275
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v5

    div-int v5, v1, v5

    # += operator for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I
    invoke-static {v3, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5412(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 1277
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V

    .line 1279
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/view/Choreographer;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/view/Choreographer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1280
    :cond_4
    return-void

    :cond_5
    move v3, v5

    .line 1271
    goto :goto_0
.end method
