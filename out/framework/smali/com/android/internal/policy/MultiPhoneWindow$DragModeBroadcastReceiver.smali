.class public Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0

    .prologue
    .line 2628
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2629
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2633
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2634
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 2635
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2636
    const-string v0, "MultiPhoneWindow"

    const-string v1, "SmartClipService Stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_1

    .line 2638
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performStopDragMode()V

    .line 2640
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2641
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    .line 2644
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2645
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 2647
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v0, :cond_4

    .line 2648
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setDragAndDropMode(Z)V

    .line 2650
    :cond_4
    return-void
.end method
