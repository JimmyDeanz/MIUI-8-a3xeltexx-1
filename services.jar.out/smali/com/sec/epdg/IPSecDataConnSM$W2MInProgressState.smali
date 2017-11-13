.class Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "W2MInProgressState"
.end annotation


# instance fields
.field private isHOResumeReceived:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 1071
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in W2MInProgressState state : Entered W2MInProgressState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 1074
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/32 v2, 0x27100

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    .line 1076
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1080
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in W2MInProgressState state : Exiting W2MInProgressState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$7000(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1082
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1086
    const/4 v2, 0x0

    .line 1087
    .local v2, "status":Z
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1210
    :pswitch_0
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :goto_0
    return v2

    .line 1091
    :pswitch_1
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$7202(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    goto :goto_0

    .line 1094
    :pswitch_2
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Waiting response from RIL in W2M case for 160 secs"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$7202(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1096
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    goto :goto_0

    .line 1101
    :pswitch_3
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v3, v6, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1102
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Disconnection Happened, move to peer disconnect state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$6200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 1108
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1109
    .local v1, "pdnType":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1110
    .local v0, "act":I
    iput-boolean v7, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    .line 1111
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On handover resume, received act is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cid is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const/16 v3, 0x21

    if-ne v0, v3, :cond_1

    .line 1116
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v8, v1}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    .line 1118
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1119
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1147
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1120
    :cond_1
    const/16 v3, 0x30

    if-ne v0, v3, :cond_6

    .line 1121
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$7202(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1122
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$7400(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1125
    :cond_3
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v3, :cond_4

    .line 1127
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgCommands;->postDeregister(Ljava/lang/String;I)V

    .line 1132
    :goto_2
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1133
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    goto :goto_1

    .line 1129
    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v8, v1}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    goto :goto_2

    .line 1135
    :cond_5
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1136
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1137
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 1138
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_1

    .line 1140
    :cond_6
    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    .line 1141
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "IP is changed during handover"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$7202(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1143
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1144
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1145
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v8, v1}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    goto/16 :goto_1

    .line 1152
    .end local v0    # "act":I
    .end local v1    # "pdnType":I
    :pswitch_5
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Disconnection Request Received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    if-nez v3, :cond_7

    .line 1157
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1158
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "APN_DETACH req received and cellular unavailable"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_7
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v3, v6, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1176
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 1160
    :cond_8
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "APN_DETACH req received  before HO_RESUME. Unexpected event."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1180
    :pswitch_6
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Force Disconnection Request Received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v3, v6, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1193
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 1198
    :pswitch_7
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unexpected event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1203
    :pswitch_8
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1206
    :pswitch_9
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Ignoring the Interface UP event as SM is in W2LInProgress state. "

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
