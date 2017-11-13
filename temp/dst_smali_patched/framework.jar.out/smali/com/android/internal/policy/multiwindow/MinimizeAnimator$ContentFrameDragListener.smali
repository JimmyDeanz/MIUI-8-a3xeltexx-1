.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentFrameDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p2, "x1"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/16 v3, 0x64

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mDragMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
