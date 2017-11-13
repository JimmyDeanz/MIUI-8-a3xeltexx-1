.class Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;
.super Landroid/os/Handler;
.source "AbstractScrollEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    # getter for: Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->yAniEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->access$000(Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentY:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetY:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .local v1, "yDiff":F
    cmpg-float v2, v1, v7

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetY:F

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentY:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iput-boolean v6, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isYMoving:Z

    .end local v1    # "yDiff":F
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-boolean v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isOpen:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationTotalFrame:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v4, v4, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationTotalFrame:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentListTextAlpha:I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentListTextAlpha:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentTextShapeAlpha:I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-boolean v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isOpen:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-boolean v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentWidthOffset:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetWidthOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetWidthOffset:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentWidthOffset:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "offsetDiff":F
    cmpg-float v2, v0, v7

    if-gez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetWidthOffset:F

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentWidthOffset:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iput-boolean v6, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isWidthMoving:Z

    .end local v0    # "offsetDiff":F
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-boolean v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isYMoving:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-boolean v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-boolean v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isWidthMoving:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->stopAnimation()V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->invalidate()V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-boolean v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-object v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    .restart local v1    # "yDiff":F
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentY:F

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v4, v4, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetY:F

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v5, v5, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentY:F

    goto/16 :goto_0

    .end local v1    # "yDiff":F
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v3, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetY:F

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentY:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iput-boolean v6, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isYMoving:Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iput-boolean v6, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v2, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_8

    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iput-boolean v6, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    goto/16 :goto_1

    .restart local v0    # "offsetDiff":F
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentWidthOffset:F

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v4, v4, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->targetWidthOffset:F

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect$1;->this$0:Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;

    iget v5, v5, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentWidthOffset:F

    sub-float/2addr v4, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->currentWidthOffset:F

    goto :goto_2
.end method
