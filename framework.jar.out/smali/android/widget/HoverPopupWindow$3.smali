.class Landroid/widget/HoverPopupWindow$3;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow;->setAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, -0x1

    .line 532
    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Landroid/widget/HoverPopupWindow;->objAnimationValue:F
    invoke-static {v1, v0}, Landroid/widget/HoverPopupWindow;->access$1302(Landroid/widget/HoverPopupWindow;F)F

    .line 534
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$1000(Landroid/widget/HoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$1400(Landroid/widget/HoverPopupWindow;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$1300(Landroid/widget/HoverPopupWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 538
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$1300(Landroid/widget/HoverPopupWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$700(Landroid/widget/HoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$1500(Landroid/widget/HoverPopupWindow;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$1300(Landroid/widget/HoverPopupWindow;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 542
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$1300(Landroid/widget/HoverPopupWindow;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$1100(Landroid/widget/HoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 544
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$1300(Landroid/widget/HoverPopupWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$1200(Landroid/widget/HoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$1300(Landroid/widget/HoverPopupWindow;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$3;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0
.end method
