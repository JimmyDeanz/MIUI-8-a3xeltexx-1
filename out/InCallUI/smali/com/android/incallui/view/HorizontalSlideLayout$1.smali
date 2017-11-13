.class Lcom/android/incallui/view/HorizontalSlideLayout$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "HorizontalSlideLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/HorizontalSlideLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/HorizontalSlideLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/HorizontalSlideLayout;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private handlePercent(F)F
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 360
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 361
    const/4 p1, 0x0

    .line 365
    :cond_0
    :goto_0
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0

    .line 362
    :cond_1
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 363
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget p2, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectRange:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget p2, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectFinalLeft:I

    .line 297
    :cond_1
    :goto_0
    return p2

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    if-le p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget p2, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerRange:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget p2, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerFinalLeft:I

    :cond_4
    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectRange:I

    .line 410
    :goto_0
    return v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerRange:I

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectRange:I

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 8
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x3f666666    # 0.9f

    .line 370
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mScaleRate:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mScaleRate:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 372
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 374
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->startRejectIndicatorAnim(Z)V
    invoke-static {v0, v4}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$200(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    .line 375
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->stopAnswerIndicatorAnim()V
    invoke-static {v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$400(Lcom/android/incallui/view/HorizontalSlideLayout;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 378
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->startAnswerIndicatorAnim(Z)V
    invoke-static {v0, v4}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$100(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    .line 379
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->stopRejectIndicatorAnim()V
    invoke-static {v0}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$300(Lcom/android/incallui/view/HorizontalSlideLayout;)V

    goto :goto_0
.end method

.method public onViewDragStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 307
    packed-switch p1, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 309
    :pswitch_1
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 310
    .local v1, "rejectLeft":I
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 311
    .local v0, "answerLeft":I
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    if-ne v0, v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->startAnswerIndicatorAnim(Z)V
    invoke-static {v2, v3}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$100(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    .line 314
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->startRejectIndicatorAnim(Z)V
    invoke-static {v2, v3}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$200(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectFinalLeft:I

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    if-ne v0, v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

    invoke-interface {v2}, Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;->onReject()V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerFinalLeft:I

    if-ne v0, v2, :cond_3

    .line 322
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;

    invoke-interface {v2}, Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;->onAnswer()V

    goto :goto_0

    .line 326
    :cond_3
    # getter for: Lcom/android/incallui/view/HorizontalSlideLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error State"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    invoke-virtual {v2}, Lcom/android/incallui/view/HorizontalSlideLayout;->internalShowPanel()V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "percent":F
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 343
    int-to-float v2, p2

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v3, v3, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectRange:I

    iget-object v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v4, v4, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 344
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectInitLeft:I

    if-eq p2, v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->stopRejectIndicatorAnim()V
    invoke-static {v2}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$300(Lcom/android/incallui/view/HorizontalSlideLayout;)V

    .line 353
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/view/HorizontalSlideLayout$1;->handlePercent(F)F

    move-result v2

    sub-float v0, v5, v2

    .line 354
    .local v0, "alpha":F
    # getter for: Lcom/android/incallui/view/HorizontalSlideLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":percent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "alpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 356
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    invoke-virtual {v2}, Lcom/android/incallui/view/HorizontalSlideLayout;->invalidate()V

    .line 357
    return-void

    .line 347
    .end local v0    # "alpha":F
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    sub-int/2addr v2, p2

    iget-object v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v3, v3, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v3, v3, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerRange:I

    iget-object v4, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v4, v4, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 349
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerInitLeft:I

    if-eq p2, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->stopAnswerIndicatorAnim()V
    invoke-static {v2}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$400(Lcom/android/incallui/view/HorizontalSlideLayout;)V

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 386
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 387
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectRange:I

    iget-object v2, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v2, v2, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->internalDoReject(Z)V
    invoke-static {v0, v4}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$500(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->internalInitReject(Z)V
    invoke-static {v0, v4}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$600(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    .line 391
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 394
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mViewWidth:I

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget v1, v1, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerRange:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_3

    .line 395
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->internalDoAnswer(Z)V
    invoke-static {v0, v4}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$700(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    goto :goto_0

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    # invokes: Lcom/android/incallui/view/HorizontalSlideLayout;->internalInitAnswer(Z)V
    invoke-static {v0, v4}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$800(Lcom/android/incallui/view/HorizontalSlideLayout;Z)V

    .line 398
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 281
    # getter for: Lcom/android/incallui/view/HorizontalSlideLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/view/HorizontalSlideLayout;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child view\uff1a"

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

    .line 282
    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mRejectLayout:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/HorizontalSlideLayout$1;->this$0:Lcom/android/incallui/view/HorizontalSlideLayout;

    iget-object v0, v0, Lcom/android/incallui/view/HorizontalSlideLayout;->mAnswerLayout:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
