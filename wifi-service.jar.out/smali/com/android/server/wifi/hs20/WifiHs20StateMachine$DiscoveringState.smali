.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscoveringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1143
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1144
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1149
    const/4 v0, 0x0

    .line 1150
    .local v0, "bRetVal":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1236
    :goto_0
    return v0

    .line 1152
    :sswitch_0
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_SELECT_OSU"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 1154
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1155
    const/4 v0, 0x1

    .line 1156
    goto :goto_0

    .line 1158
    :sswitch_1
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_START_REMEDIATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1165
    const/4 v0, 0x1

    .line 1166
    goto :goto_0

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1168
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :sswitch_2
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_HOTSPOT20_DISABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1170
    const/4 v0, 0x1

    .line 1171
    goto :goto_0

    .line 1173
    :sswitch_3
    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_POLICY_REMEDIATION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v7, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    .line 1175
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v7, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 1176
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    .line 1177
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, p1, Landroid/os/Message;->arg2:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    .line 1178
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    .line 1179
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1180
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v3, :cond_1

    .line 1181
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1182
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    .line 1184
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1191
    :goto_2
    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_POLICY_REMEDIATION - credential ID , Method Type, Credential Type , Server URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v0, 0x1

    .line 1196
    goto/16 :goto_0

    .line 1186
    :cond_0
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_START_POLICY_REMEDIATION uri null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1188
    :cond_1
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_START_POLICY_REMEDIATION policyupdateobj null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1190
    :cond_2
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_START_POLICY_REMEDIATION policy null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1198
    :sswitch_4
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v5, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    .line 1200
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v7, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 1201
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    .line 1202
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    .line 1203
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    .line 1204
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->current_subscription:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    .line 1205
    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_START_SUBSCRIPTION_REMEDIATION - credential ID , Method Type, Credential Type , Server URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1210
    const/4 v0, 0x1

    .line 1211
    goto/16 :goto_0

    .line 1213
    :sswitch_5
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_UPDATE_MO  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1215
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x4e22

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1216
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1218
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1222
    :goto_3
    const/4 v0, 0x1

    .line 1223
    goto/16 :goto_0

    .line 1219
    :catch_1
    move-exception v1

    .line 1220
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1225
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "message":Landroid/os/Message;
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1226
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    if-nez v3, :cond_3

    .line 1227
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    .line 1230
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1231
    const/4 v0, 0x1

    .line 1232
    goto/16 :goto_0

    .line 1229
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    goto :goto_4

    .line 1150
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b5a -> :sswitch_1
        0x1b5e -> :sswitch_6
        0x1b61 -> :sswitch_5
        0x1b6b -> :sswitch_0
        0x1b72 -> :sswitch_2
        0x1b75 -> :sswitch_3
        0x1b76 -> :sswitch_4
    .end sparse-switch
.end method
