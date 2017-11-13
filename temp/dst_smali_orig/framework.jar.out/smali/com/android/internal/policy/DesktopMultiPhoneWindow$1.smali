.class Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;
.super Ljava/lang/Object;
.source "DesktopMultiPhoneWindow.java"

# interfaces
.implements Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DesktopMultiPhoneWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DesktopMultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDocking.onCancel() : mDismissGuideByDockingCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v3, v3, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v0, "tempBoundForDesktop":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto :goto_0

    .end local v0    # "tempBoundForDesktop":Landroid/graphics/Rect;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->showGuideDT(Landroid/graphics/Rect;I)V

    goto :goto_0
.end method
