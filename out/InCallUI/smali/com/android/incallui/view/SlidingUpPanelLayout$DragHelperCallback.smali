.class Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;
.super Lcom/android/incallui/view/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SlidingUpPanelLayout;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/android/incallui/view/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1011
    sub-int v0, p2, p3

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1018
    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$1100(Lcom/android/incallui/view/SlidingUpPanelLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$700(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v1

    .line 1020
    .local v1, "topBound":I
    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$900(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v2

    add-int v0, v1, v2

    .line 1026
    .local v0, "bottomBound":I
    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 1022
    .end local v0    # "bottomBound":I
    .end local v1    # "topBound":I
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    .line 1023
    .restart local v0    # "bottomBound":I
    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$900(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v2

    sub-int v1, v0, v2

    .restart local v1    # "topBound":I
    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$900(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 954
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDragStateChanged: mViewDragHelper.getViewDragState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$100(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/view/ViewDragHelper;->getViewDragState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mSlideState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$200(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mSlideOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$400(Lcom/android/incallui/view/SlidingUpPanelLayout;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;
    invoke-static {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$100(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/view/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    invoke-static {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$200(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    if-eq v0, v1, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 935
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    # setter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    invoke-static {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$202(Lcom/android/incallui/view/SlidingUpPanelLayout;Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    .line 936
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    invoke-static {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$200(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    if-eq v0, v1, :cond_2

    .line 939
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    # setter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    invoke-static {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$202(Lcom/android/incallui/view/SlidingUpPanelLayout;Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    .line 940
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    goto :goto_0

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    invoke-static {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$200(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchPanelCollapsedReleased(Landroid/view/View;)V

    .line 946
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->onPanelDragged(I)V
    invoke-static {v0, p3}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$600(Lcom/android/incallui/view/SlidingUpPanelLayout;I)V

    .line 959
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->invalidate()V

    .line 960
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xVelocity"    # F
    .param p3, "yVelocity"    # F

    .prologue
    const/4 v5, 0x0

    const v4, 0x3f2b851f    # 0.67f

    .line 964
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$700(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v0

    .line 966
    .local v0, "top":I
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewreleased: mDragView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$800(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " xVelocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " yVelocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSlideRange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v3}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$900(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMinFlingVelocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mMinFlingVelocity:I
    invoke-static {v3}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$1000(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$400(Lcom/android/incallui/view/SlidingUpPanelLayout;Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    cmpg-float v1, p3, v5

    if-gez v1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mMinFlingVelocity:I
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$1000(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchOnPanelViewExpandReleased(Landroid/view/View;)V

    .line 972
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$100(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/ViewDragHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v0}, Lcom/android/incallui/view/ViewDragHelper;->flingCapturedView(IIII)V

    .line 974
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->invalidate()V

    .line 1001
    :goto_0
    return-void

    .line 978
    :cond_0
    cmpl-float v1, p3, v5

    if-gtz v1, :cond_1

    cmpl-float v1, p3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 979
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$900(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 983
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const-string v2, "onViewReleased: error happened, mSlideOffset > DEFAULT_SLIDE_OFFSET_THRESHOLD & top = getPaddingTop()"

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$400(Lcom/android/incallui/view/SlidingUpPanelLayout;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$900(Lcom/android/incallui/view/SlidingUpPanelLayout;)I

    move-result v1

    add-int/2addr v0, v1

    .line 987
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 988
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    const-string v2, "onViewReleased: error happened, mSlideOffset < DEFAULT_SLIDE_OFFSET_THRESHOLD & top > getPaddingTop()"

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$400(Lcom/android/incallui/view/SlidingUpPanelLayout;Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x0

    .line 992
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewReleased: slideOffSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v3}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$400(Lcom/android/incallui/view/SlidingUpPanelLayout;Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 994
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchOnPanelViewExpandReleased(Landroid/view/View;)V

    .line 999
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;
    invoke-static {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$100(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/ViewDragHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/view/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1000
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->invalidate()V

    goto/16 :goto_0

    .line 995
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 996
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchPanelCollapsedReleased(Landroid/view/View;)V

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/android/incallui/view/SlidingUpPanelLayout;

    # getter for: Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsUnableToDrag:Z
    invoke-static {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->access$000(Lcom/android/incallui/view/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    const/4 v0, 0x0

    .line 921
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    goto :goto_0
.end method
