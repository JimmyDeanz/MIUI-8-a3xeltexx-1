.class Lcom/android/server/display/MagnifierSurfaceControl$Border$1;
.super Landroid/os/Handler;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2900()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3100()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3200()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3200()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3300()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewTouchArea:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3400()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewTouchArea:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3400()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3500()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_5
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_6
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3600()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3600()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3600()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2900()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3100()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3200()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3200()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3300()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewTouchArea:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3400()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;

    move-result-object v0

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewTouchArea:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3400()Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3500()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v1, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->onTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3000()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v1, v1, Lcom/android/server/display/MagnifierSurfaceControl$Border;->onClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3800(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;Lcom/android/server/display/MagnifierSurfaceControl$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3702(Lcom/android/server/display/MagnifierSurfaceControl$Border;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    goto/16 :goto_0

    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl$Border;->handleTimeout()V
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$4000(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    goto/16 :goto_0
.end method
