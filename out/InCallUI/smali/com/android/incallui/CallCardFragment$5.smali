.class Lcom/android/incallui/CallCardFragment$5;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->setDoubleCallInfoVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enablePrimaryHangUp()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->enablePrimaryHangUp()Z

    move-result v0

    return v0
.end method

.method public hungUpPrimaryCall()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->hungUpPrimaryCall()V

    .line 476
    return-void
.end method

.method public hungUpSecondaryCall()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->hungUpSecondaryCall()V

    .line 481
    return-void
.end method

.method public onRequestPrimaryCallActive()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->activePrimaryCall()V

    .line 466
    return-void
.end method

.method public onRequestSecondaryCallActive()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->activeSecondaryCall()V

    .line 471
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 491
    return-void
.end method
