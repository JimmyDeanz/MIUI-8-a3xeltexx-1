.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EstablishingTLS"
.end annotation


# instance fields
.field private requestReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscription_flag credential_type method_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v2, :cond_1

    const-string v2, "HS2.0SubscriptionCreation"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->setOSUProvider(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V

    :cond_0
    :goto_1
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestReason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x4e21

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_ESTABLISH_TLS : method_type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " credential_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subscription_flag serverUri requestReason credential_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    const-string v2, "Subscription provisioning"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v2, :cond_3

    const-string v2, "HS2.0SubscriptionCreation"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getServerUri()Ljava/net/URI;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    goto/16 :goto_0

    :cond_3
    const-string v2, "Subscription registration"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policyUpdate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v2, :cond_5

    const-string v2, "HS2.0PolicyUpdate"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v2, "Policy update"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v2, :cond_7

    const-string v2, "HS2.0SubscriptionRemediation"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v2, "Subscription remediation"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto/16 :goto_1

    .restart local v1    # "message":Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x1b5e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "bRetVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_PROTOCOL_ERROR method_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v4, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    goto :goto_1

    :sswitch_3
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_ABORT_PROVISIONING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_SEND_SOAP_REQUEST sppPostDevData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V
    invoke-static {v1, v6, v4, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;IIILjava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_EXECUTE_COMMAND  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "MO upload"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V
    invoke-static {v1, v6, v4, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;IIILjava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_UPDATE_MO  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_HOTSPOT20_DISABLE  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v2, 0x1b65

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_4
        0x1b5f -> :sswitch_5
        0x1b61 -> :sswitch_6
        0x1b65 -> :sswitch_3
        0x1b66 -> :sswitch_8
        0x1b72 -> :sswitch_7
        0x1b74 -> :sswitch_2
        0x1b75 -> :sswitch_0
        0x1b76 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
