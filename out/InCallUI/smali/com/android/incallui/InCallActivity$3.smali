.class Lcom/android/incallui/InCallActivity$3;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/view/SimCardPickDialog$OnSimCardPickCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->launchMSimDialer(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$3;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 723
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    .line 724
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$3;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->access$102(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/view/SimCardPickDialog;)Lcom/android/incallui/view/SimCardPickDialog;

    .line 725
    return-void
.end method

.method public onSimCardPick(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "selectedAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 717
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->handleAccountSelection(Landroid/telecom/PhoneAccountHandle;)V

    .line 718
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$3;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/InCallActivity;->mSimCardPickDialog:Lcom/android/incallui/view/SimCardPickDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->access$102(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/view/SimCardPickDialog;)Lcom/android/incallui/view/SimCardPickDialog;

    .line 719
    return-void
.end method
