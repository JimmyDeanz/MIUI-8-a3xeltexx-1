.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionConnectionManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 8714
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureConnection()V
    .locals 6

    .prologue
    .line 8734
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 8736
    .local v0, "registered":Z
    :goto_0
    if-nez v0, :cond_0

    .line 8737
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    new-instance v4, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    iget-object v5, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v4, v5}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I

    move-result v2

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 8741
    :cond_0
    return-void

    .line 8734
    .end local v0    # "registered":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureNoConnection()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 8744
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 8746
    .local v0, "registered":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 8747
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 8748
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 8750
    :cond_0
    return-void

    .line 8744
    .end local v0    # "registered":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 8718
    if-eqz p1, :cond_1

    .line 8719
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 8720
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8721
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 8722
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 8723
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 8724
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 8731
    .end local v0    # "focusedView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 8728
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 8729
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
