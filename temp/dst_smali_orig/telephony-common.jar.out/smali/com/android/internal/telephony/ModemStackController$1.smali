.class Lcom/android/internal/telephony/ModemStackController$1;
.super Landroid/content/BroadcastReceiver;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ModemStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ModemStackController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ModemStackController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "phoneinECMState"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string v8, "Device is in ECBM Mode"

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/4 v8, 0x1

    # setter for: Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string v8, "Device is out of ECBM Mode"

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z

    goto :goto_0

    :cond_2
    const-string v7, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "_id"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, "subId":I
    const-string v7, "columnName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "column":Ljava/lang/String;
    const-string v7, "intContent"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "intValue":I
    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTION_SUBINFO_CONTENT_CHANGE on subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " intValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z
    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->access$200(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    const-string v7, "sub_state"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    .local v3, "phoneId":I
    if-nez v1, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/16 v8, 0x8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    sget-object v7, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "intValue":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "phoneId":I
    .end local v6    # "subId":I
    :cond_3
    const-string v7, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "subscription"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "subId":I
    const-string v7, "phone"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "phoneId":I
    const-string v7, "operationResult"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "status":I
    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTION_SUBSCRIPTION_SET_UICC_RESULT on subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "phoneId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z
    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->access$200(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/16 v8, 0x8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "msg":Landroid/os/Message;
    sget-object v7, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "phoneId":I
    .end local v5    # "status":I
    .end local v6    # "subId":I
    :cond_4
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "phone"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "phoneId":I
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "state":Ljava/lang/String;
    const-string v7, "ABSENT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z
    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->access$200(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTION_SIM_STATE_CHANGED on phoneId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->access$400(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/16 v8, 0x8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "msg":Landroid/os/Message;
    sget-object v7, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
