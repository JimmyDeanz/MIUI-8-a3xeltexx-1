.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mReceiver action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 135
    const-string v7, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 137
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 138
    .local v5, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_2

    move v1, v6

    .line 139
    .local v1, "nSubCount":I
    :goto_0
    if-lez v1, :cond_3

    .line 140
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SUBINFO_RECORD_UPDATED - nSubCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSubInfoReady changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to true."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 141
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v7, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$802(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    .line 146
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .line 147
    .local v2, "serviceState":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedReceived:Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v7

    if-eq v6, v7, :cond_1

    if-nez v2, :cond_1

    .line 148
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 149
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 152
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore because DDS is not matched. current state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 159
    .end local v1    # "nSubCount":I
    .end local v2    # "serviceState":I
    .end local v3    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v4    # "subId":I
    .end local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    :goto_2
    return-void

    .line 138
    .restart local v3    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .restart local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_0

    .line 143
    .restart local v1    # "nSubCount":I
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_SUBINFO_RECORD_UPDATED - nSubCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSubInfoReady changed from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to false."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z
    invoke-static {v7, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$802(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    goto/16 :goto_1

    .line 155
    .restart local v2    # "serviceState":I
    .restart local v4    # "subId":I
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2
.end method
