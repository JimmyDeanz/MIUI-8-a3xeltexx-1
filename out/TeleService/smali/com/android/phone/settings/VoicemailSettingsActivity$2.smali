.class Lcom/android/phone/settings/VoicemailSettingsActivity$2;
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
    .line 820
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 823
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 824
    .local v3, "result":Landroid/os/AsyncResult;
    const/4 v0, 0x0

    .line 825
    .local v0, "done":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 869
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 871
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$500(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 872
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/16 v5, 0x259

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V
    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1100(Lcom/android/phone/settings/VoicemailSettingsActivity;I)V

    .line 874
    :cond_1
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->handleSetVmOrFwdMessage()V
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1200(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    .line 876
    :cond_2
    return-void

    .line 827
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # setter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v4, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$102(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 828
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->isVmChangeSuccess()Z
    invoke-static {v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$300(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v5

    # setter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$202(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z

    .line 829
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;
    invoke-static {v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$400(Lcom/android/phone/settings/VoicemailSettingsActivity;)Lcom/android/phone/SubscriptionInfoHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/SubscriptionInfoHelper;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->refreshMwiIndicator(I)V

    .line 831
    const/4 v0, 0x1

    .line 832
    goto :goto_0

    .line 834
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$500(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 836
    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in setting fwd# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->isForwardingCompleted()Z
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$700(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->isFwdChangeSuccess()Z
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$800(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 842
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # invokes: Lcom/android/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$900(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    goto/16 :goto_0

    .line 844
    :cond_4
    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Overall fwd changes completed in failure. Check if we need to try rollback for some settings."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z
    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1002(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z

    .line 847
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$500(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 849
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 850
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 851
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 853
    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Rollback will be required"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/4 v5, 0x1

    # setter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z
    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1002(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z

    .line 858
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_6
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z
    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$1000(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 859
    # getter for: Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No rollback needed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_7
    const/4 v0, 0x1

    .line 862
    goto/16 :goto_0

    .line 825
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
