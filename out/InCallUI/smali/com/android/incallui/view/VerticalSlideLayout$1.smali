.class Lcom/android/incallui/view/VerticalSlideLayout$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "VerticalSlideLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/VerticalSlideLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/VerticalSlideLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/VerticalSlideLayout;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mRejectFinalTop:I
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$200(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mRejectFinalTop:I
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$200(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mShowEndCallState:Z
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$300(Lcom/android/incallui/view/VerticalSlideLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$400(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$400(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result p2

    :cond_1
    :goto_1
    move v0, p2

    .line 195
    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$500(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$500(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result p2

    :cond_3
    goto :goto_1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 234
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 200
    packed-switch p1, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 202
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$100(Lcom/android/incallui/view/VerticalSlideLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 203
    .local v0, "top":I
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$400(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$600(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$600(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;->onAnswer()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mRejectFinalTop:I
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$200(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mShowEndCallState:Z
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$300(Lcom/android/incallui/view/VerticalSlideLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$600(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$600(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;->onReject()V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOnEndCallSlideListener:Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$700(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOnEndCallSlideListener:Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;
    invoke-static {v1}, Lcom/android/incallui/view/VerticalSlideLayout;->access$700(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;->onEndCallSlide()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 229
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$100(Lcom/android/incallui/view/VerticalSlideLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    .line 239
    .local v1, "operatorY":F
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$500(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 240
    .local v0, "delta":F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_3

    .line 241
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$400(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I
    invoke-static {v3}, Lcom/android/incallui/view/VerticalSlideLayout;->access$500(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mMinFlingVelocity:I
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$800(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # invokes: Lcom/android/incallui/view/VerticalSlideLayout;->internalDoAnswer()V
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$900(Lcom/android/incallui/view/VerticalSlideLayout;)V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # invokes: Lcom/android/incallui/view/VerticalSlideLayout;->internalInitAnswer()V
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$1000(Lcom/android/incallui/view/VerticalSlideLayout;)V

    goto :goto_0

    .line 246
    :cond_3
    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mRejectFinalTop:I
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$200(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I
    invoke-static {v3}, Lcom/android/incallui/view/VerticalSlideLayout;->access$1100(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitBottom:I
    invoke-static {v3}, Lcom/android/incallui/view/VerticalSlideLayout;->access$1200(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mMinFlingVelocity:I
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$800(Lcom/android/incallui/view/VerticalSlideLayout;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_5

    .line 248
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # invokes: Lcom/android/incallui/view/VerticalSlideLayout;->internalDoRejectOrEndCall()V
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$1300(Lcom/android/incallui/view/VerticalSlideLayout;)V

    goto :goto_0

    .line 250
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # invokes: Lcom/android/incallui/view/VerticalSlideLayout;->internalInitRejectOrEndCall()V
    invoke-static {v2}, Lcom/android/incallui/view/VerticalSlideLayout;->access$1400(Lcom/android/incallui/view/VerticalSlideLayout;)V

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 175
    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/view/VerticalSlideLayout;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryCaptureView child view\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout$1;->this$0:Lcom/android/incallui/view/VerticalSlideLayout;

    # getter for: Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/view/VerticalSlideLayout;->access$100(Lcom/android/incallui/view/VerticalSlideLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
