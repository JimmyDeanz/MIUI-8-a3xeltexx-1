.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuOpen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

.field final synthetic val$autoclose:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)V
    .locals 0

    .prologue
    .line 3622
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iput-boolean p2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->val$autoclose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3633
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$2602(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z

    .line 3636
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->setFloatingButtonHoverListener()V
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    .line 3637
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->val$autoclose:Z

    if-eqz v1, :cond_0

    .line 3638
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3650
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v1, :cond_0

    .line 3651
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;)V

    const-wide/16 v4, 0x9c4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3663
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .line 3664
    .local v0, "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    iget-boolean v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v1, :cond_1

    .line 3665
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3667
    :cond_1
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateFloatingMenuOpen anim is end. autoClose="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->val$autoclose:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isResizing now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3630
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_0

    .line 3626
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3628
    :cond_0
    return-void
.end method
