.class Lcom/android/server/policy/GlobalActions$40;
.super Landroid/database/ContentObserver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$8600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$8600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, v1, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    # invokes: Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->access$8200(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4100(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4100(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4100(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$8600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$40;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, v1, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    # invokes: Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->access$8200(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto :goto_0
.end method
