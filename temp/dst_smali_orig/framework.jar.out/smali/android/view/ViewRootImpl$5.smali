.class Landroid/view/ViewRootImpl$5;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->initContentResizeAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onEndAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    # setter for: Landroid/view/ViewRootImpl;->mResizeAnimating:Z
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchSipResizeAnimationState(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0}, Landroid/view/ViewRootImpl$5;->onEndAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0}, Landroid/view/ViewRootImpl$5;->onEndAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/view/ViewRootImpl$5;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    # setter for: Landroid/view/ViewRootImpl;->mResizeAnimating:Z
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$3802(Landroid/view/ViewRootImpl;Z)Z

    return-void
.end method
