.class Lcom/android/phone/settings/VoicemailSettingsActivity$3;
.super Landroid/os/Handler;
.source "VoicemailSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/VoicemailSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 885
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 886
    .local v1, "result":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$200(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$100(Lcom/android/phone/settings/VoicemailSettingsActivity;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1000(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->isForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$700(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 907
    .local v0, "done":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 909
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/16 v3, 0x25b

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1100(Lcom/android/phone/settings/VoicemailSettingsActivity;I)V

    .line 910
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->onRevertDone()V
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1300(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    .line 912
    :cond_3
    return-void

    .line 889
    .end local v0    # "done":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # setter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2, v1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$102(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 894
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$500(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 905
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
