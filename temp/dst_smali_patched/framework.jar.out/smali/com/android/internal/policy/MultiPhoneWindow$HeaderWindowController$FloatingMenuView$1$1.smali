.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;->this$3:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;->this$3:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$2800(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;->this$3:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;->this$3:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1$1;->this$3:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;->this$2:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mResizeVisualCue:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->playAnimation(Z)V

    :cond_0
    return-void
.end method
