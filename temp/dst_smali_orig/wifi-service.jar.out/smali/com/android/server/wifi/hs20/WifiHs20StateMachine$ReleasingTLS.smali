.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReleasingTLS"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x4e24

    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x0

    .local v0, "bRetVal":Z
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const-string v7, "HS20StateMachine"

    const-string v8, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v7, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v7, "HS20StateMachine"

    const-string v8, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v7, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_PROVISIONING_DONE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_PROVISIONING_DONE credential type sent by manager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " credential_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " method_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_PROVISIONING_DONE  credential type set credential_type = msg.arg1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    const/16 v5, 0x232d

    .local v5, "status":I
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Subscription Remediation Successful"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .local v6, "toast":Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v10, v10, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v7, v8, v9, v10, v13}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    # operator++ for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1808()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUserPriority(II)Z

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateHs20Credential(I)I

    move-result v4

    .local v4, "new_credential_id":I
    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new credential_id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "old cred_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "new_credential_id":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    if-eqz v7, :cond_6

    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v7, v11, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v12}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "status":I
    .end local v6    # "toast":Landroid/widget/Toast;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->loadCredtoSupplicant()V
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    const/16 v5, 0x232a

    .restart local v5    # "status":I
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Subscription Provisioning Successful"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .restart local v6    # "toast":Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V

    goto :goto_1

    .end local v5    # "status":I
    .end local v6    # "toast":Landroid/widget/Toast;
    :cond_3
    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updating credential_id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    if-eqz v7, :cond_5

    const/16 v5, 0x2330

    .restart local v5    # "status":I
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Policy Update Successful"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .restart local v6    # "toast":Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateHs20Credential(I)I

    move-result v4

    .restart local v4    # "new_credential_id":I
    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new credential_id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "old cred_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v10, v10, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v7, v8, v4, v9, v10}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    :goto_3
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)[Ljava/util/Timer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    aget-object v7, v7, v8

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)[Ljava/util/Timer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/Timer;->cancel()V

    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V
    invoke-static {v7, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V

    goto/16 :goto_1

    .end local v4    # "new_credential_id":I
    .end local v5    # "status":I
    .end local v6    # "toast":Landroid/widget/Toast;
    :cond_5
    const/16 v5, 0x232d

    .restart local v5    # "status":I
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Subscription Remediation Successful"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .restart local v6    # "toast":Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateHs20Credential(I)I

    move-result v4

    .restart local v4    # "new_credential_id":I
    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new credential_id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "old cred_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v8, v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v9, v9, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v10, v10, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v7, v8, v4, v9, v10}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    goto :goto_3

    .end local v4    # "new_credential_id":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    if-eq v7, v13, :cond_7

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    invoke-virtual {v7, v8, v12}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_7
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x2a

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "HS20StateMachine"

    const-string v8, "SEC_COMMAND_ID_HS20_INTERWORKING_SELECT command error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v5, v12, v12}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->resetVariables()V
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$10000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$10100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v5    # "status":I
    .end local v6    # "toast":Landroid/widget/Toast;
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    if-nez v7, :cond_b

    const/16 v5, 0x232b

    .restart local v5    # "status":I
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Subscription Provisioning Failed"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .restart local v6    # "toast":Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    if-eq v7, v13, :cond_a

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    invoke-virtual {v7, v8, v12}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_a
    :goto_5
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    goto :goto_4

    .end local v5    # "status":I
    .end local v6    # "toast":Landroid/widget/Toast;
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v7, v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Policy Update Failed"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .restart local v6    # "toast":Landroid/widget/Toast;
    const/16 v5, 0x2331

    .restart local v5    # "status":I
    goto :goto_5

    .end local v5    # "status":I
    .end local v6    # "toast":Landroid/widget/Toast;
    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Subscription Remediation Failed"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .restart local v6    # "toast":Landroid/widget/Toast;
    const/16 v5, 0x232e

    .restart local v5    # "status":I
    goto :goto_5

    .end local v5    # "status":I
    .end local v6    # "toast":Landroid/widget/Toast;
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisabledState:Lcom/android/internal/util/State;
    invoke-static {v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$10200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b6d -> :sswitch_2
        0x1b73 -> :sswitch_3
        0x1b75 -> :sswitch_0
        0x1b76 -> :sswitch_1
    .end sparse-switch
.end method
