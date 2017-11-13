.class Lcom/android/services/telephony/TelephonyConnection$1;
.super Landroid/os/Handler;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 70
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v8, "MSG_PRECISE_CALL_STATE_CHANGED"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v7}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v8, "MSG_HANDOVER_STATE_CHANGED"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 78
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 80
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v7}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 81
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v7}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v7}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v8}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 86
    :cond_2
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SettingOriginalConnection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v9}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v7, v1}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    .line 90
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # setter for: Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z
    invoke-static {v7, v10}, Lcom/android/services/telephony/TelephonyConnection;->access$102(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    goto/16 :goto_0

    .line 93
    :cond_3
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v8, "MSG_HANDOVER_STATE_CHANGED: mOriginalConnection==null - invalid state (not cleaned up)"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 98
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    :pswitch_3
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v8, "MSG_RINGBACK_TONE"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v7}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->getForegroundConnection()Lcom/android/internal/telephony/Connection;
    invoke-static {v8}, Lcom/android/services/telephony/TelephonyConnection;->access$200(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v8

    if-eq v7, v8, :cond_4

    .line 102
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v8, "handleMessage, original connection is not foreground connection, skipping"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 106
    :cond_4
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v7, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/services/telephony/TelephonyConnection;->setRingbackRequested(Z)V

    goto/16 :goto_0

    .line 109
    :pswitch_4
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v7}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto/16 :goto_0

    .line 112
    :pswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 113
    .local v3, "isMultiParty":Z
    const-string v8, "Update multiparty state to %s"

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    if-eqz v3, :cond_6

    const-string v7, "Y"

    :goto_1
    aput-object v7, v9, v10

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # setter for: Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z
    invoke-static {v7, v3}, Lcom/android/services/telephony/TelephonyConnection;->access$302(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    .line 115
    if-eqz v3, :cond_5

    .line 116
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceStarted()V
    invoke-static {v7}, Lcom/android/services/telephony/TelephonyConnection;->access$400(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 119
    .end local v3    # "isMultiParty":Z
    :cond_5
    :pswitch_6
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceMergeFailed()V
    invoke-static {v7}, Lcom/android/services/telephony/TelephonyConnection;->access$500(Lcom/android/services/telephony/TelephonyConnection;)V

    goto/16 :goto_0

    .line 113
    .restart local v3    # "isMultiParty":Z
    :cond_6
    const-string v7, "N"

    goto :goto_1

    .line 124
    .end local v3    # "isMultiParty":Z
    :pswitch_7
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v8, "MSG_SUPP_SERVICE_FAILED"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 126
    .local v4, "r":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Phone$SuppService;

    .line 127
    .local v5, "service":Lcom/android/internal/telephony/Phone$SuppService;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v6

    .line 128
    .local v6, "val":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v2, "failure":Landroid/content/Intent;
    const-string v7, "org.codeaurora.ACTION_SUPP_SERVICE_FAILURE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v7, "supp_serv_failure"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    iget-object v7, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v7}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 134
    .end local v2    # "failure":Landroid/content/Intent;
    .end local v4    # "r":Landroid/os/AsyncResult;
    .end local v5    # "service":Lcom/android/internal/telephony/Phone$SuppService;
    .end local v6    # "val":I
    :pswitch_8
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->handleSuppServiceNotifyMessage(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/services/telephony/TelephonyConnection;->access$600(Lcom/android/services/telephony/TelephonyConnection;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
