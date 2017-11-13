.class Lcom/android/incallui/CallToolsFragment$3;
.super Ljava/lang/Object;
.source "CallToolsFragment.java"

# interfaces
.implements Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallToolsFragment;->checkPermissionOrPerformRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallToolsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallToolsFragment;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/incallui/CallToolsFragment;->access$1000(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/incallui/CallToolsFragment;->access$1000(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 395
    :cond_0
    const v0, 0x7f0c0093

    invoke-static {v0}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    .line 396
    return-void
.end method

.method public onPermissionGranted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 378
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mRecordStartButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/incallui/CallToolsFragment;->access$1000(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    # setter for: Lcom/android/incallui/CallToolsFragment;->mManualClickAutoRecord:Z
    invoke-static {v0, v3}, Lcom/android/incallui/CallToolsFragment;->access$1102(Lcom/android/incallui/CallToolsFragment;Z)Z

    .line 380
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    # invokes: Lcom/android/incallui/CallToolsFragment;->onRecordButtonClick(Z)V
    invoke-static {v0, v3}, Lcom/android/incallui/CallToolsFragment;->access$1200(Lcom/android/incallui/CallToolsFragment;Z)V

    .line 381
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "video_call_conference_record"

    aput-object v2, v1, v4

    const-string v2, "video_call_voice_record"

    aput-object v2, v1, v3

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v0, v3, v4, v1}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$3;->this$0:Lcom/android/incallui/CallToolsFragment;

    # invokes: Lcom/android/incallui/CallToolsFragment;->onRecordButtonClick(Z)V
    invoke-static {v0, v4}, Lcom/android/incallui/CallToolsFragment;->access$1200(Lcom/android/incallui/CallToolsFragment;Z)V

    goto :goto_0
.end method
