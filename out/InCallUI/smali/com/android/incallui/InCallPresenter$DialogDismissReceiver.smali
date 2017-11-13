.class Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDismissReceiver"
.end annotation


# instance fields
.field private dialog:Lmiui/app/AlertDialog;

.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallPresenter;Lmiui/app/AlertDialog;)V
    .locals 0
    .param p2, "dialog"    # Lmiui/app/AlertDialog;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 652
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;->dialog:Lmiui/app/AlertDialog;

    .line 653
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 657
    if-eqz p2, :cond_0

    const-string v0, "com.miui.livetalk_ACCEPT_BACK_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;->dialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;->dialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$DialogDismissReceiver;->dialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 662
    :cond_0
    return-void
.end method
