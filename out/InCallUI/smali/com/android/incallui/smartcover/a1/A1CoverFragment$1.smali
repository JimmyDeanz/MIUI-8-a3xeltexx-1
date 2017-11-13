.class Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;
.super Ljava/lang/Object;
.source "A1CoverFragment.java"

# interfaces
.implements Lcom/android/incallui/view/HorizontalSlideLayout$OnSlideFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/a1/A1CoverFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/a1/A1CoverFragment;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string v0, "onAnswer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    # getter for: Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->access$000(Lcom/android/incallui/smartcover/a1/A1CoverFragment;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 106
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    # invokes: Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showSlideLayout(Z)V
    invoke-static {v0, v2}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->access$100(Lcom/android/incallui/smartcover/a1/A1CoverFragment;Z)V

    .line 107
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->onAnswer(I)V

    .line 108
    return-void
.end method

.method public onReject()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "onReject"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    # getter for: Lcom/android/incallui/smartcover/a1/A1CoverFragment;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->access$000(Lcom/android/incallui/smartcover/a1/A1CoverFragment;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 98
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/smartcover/a1/A1CoverFragment;->showSlideLayout(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->access$100(Lcom/android/incallui/smartcover/a1/A1CoverFragment;Z)V

    .line 99
    iget-object v0, p0, Lcom/android/incallui/smartcover/a1/A1CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a1/A1CoverPresenter;->onDecline()V

    .line 100
    return-void
.end method
