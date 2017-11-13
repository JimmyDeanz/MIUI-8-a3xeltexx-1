.class Lcom/android/incallui/smartcover/a7/A7CoverFragment$1;
.super Ljava/lang/Object;
.source "A7CoverFragment.java"

# interfaces
.implements Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/a7/A7CoverFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/a7/A7CoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/a7/A7CoverFragment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a7/A7CoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a7/A7CoverFragment;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->onAnswer(I)V

    .line 64
    return-void
.end method

.method public onReject()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/a7/A7CoverFragment;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->onDecline()V

    .line 59
    return-void
.end method
