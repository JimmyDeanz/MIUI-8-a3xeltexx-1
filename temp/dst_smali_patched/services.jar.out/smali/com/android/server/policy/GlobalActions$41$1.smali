.class Lcom/android/server/policy/GlobalActions$41$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$41;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$41;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$41;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "GlobalActions"

    const-string v1, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$4602(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$4502(Z)Z

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions;->access$7702(Lcom/android/server/policy/GlobalActions;Z)Z

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v0

    if-nez v0, :cond_0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$4702(Z)Z

    :cond_0
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GlobalActions"

    const-string v1, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$4702(Z)Z

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$302(Z)Z

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$41$1;->this$1:Lcom/android/server/policy/GlobalActions$41;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)V

    :cond_2
    return-void
.end method
