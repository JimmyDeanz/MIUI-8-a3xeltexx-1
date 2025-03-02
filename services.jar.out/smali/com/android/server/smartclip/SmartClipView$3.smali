.class Lcom/android/server/smartclip/SmartClipView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SmartClipView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 742
    const-string v0, "SmartClipView"

    const-string v1, "Pen DoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v1, v1, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->access$302(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 749
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 729
    const-string v0, "SmartClipView"

    const-string v1, "Pen LongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 733
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 734
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v1, v1, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 738
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    .line 754
    if-eqz p1, :cond_2

    .line 756
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$300(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 757
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 758
    .local v2, "diffX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 759
    .local v3, "diffY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 760
    .local v0, "absDiffX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 762
    .local v1, "absDiffY":I
    const/16 v5, 0x96

    if-ge v0, v5, :cond_0

    if-ltz v3, :cond_1

    .line 763
    :cond_0
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5, v4}, Lcom/android/server/smartclip/SmartClipView;->access$302(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 765
    const-string v5, "SmartClipView"

    const-string/jumbo v6, "onScroll() vertical Up - out of threshold!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .end local v0    # "absDiffX":I
    .end local v1    # "absDiffY":I
    .end local v2    # "diffX":I
    .end local v3    # "diffY":I
    :cond_1
    :goto_0
    return v4

    .line 772
    :cond_2
    const-string v4, "SmartClipView"

    const-string v5, "There is no previous down event."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v4, 0x0

    goto :goto_0
.end method
