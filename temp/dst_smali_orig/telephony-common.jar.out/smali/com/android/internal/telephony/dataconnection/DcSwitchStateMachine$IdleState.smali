.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v2, "IdleState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsInCall:I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v2, "DctController is not ready"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    const/4 v4, 0x0

    .local v4, "retVal":Z
    :goto_0
    return v4

    .end local v4    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    if-eqz v0, :cond_0

    const-string v9, "DcSwitchStateMachine.IdleState: REQ_CONNECT"

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->legacyType:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v10, "processing: REQ_CONNECT for Emergency type"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IdleState: REQ_CONNECT, apnRequest="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    const-string v9, "gsm.sim.state"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "simStates":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "slotState":[Ljava/lang/String;
    const-string v9, "ABSENT"

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v10, "IdleState: REQ_CONNECT, SIM state is Absent, Do not change to attaching state"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto :goto_0

    .end local v4    # "retVal":Z
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v5    # "simStates":Ljava/lang/String;
    .end local v7    # "slotState":[Ljava/lang/String;
    :sswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v10, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .end local v4    # "retVal":Z
    :sswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v10, "IdleState: EVENT_DATA_ATTACHED"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    const-string v9, "ro.multisim.simslotcount"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v12, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    .local v8, "subId":I
    const-string v9, "ril.dds.command_slot"

    invoke-static {v9, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v10

    if-eq v9, v10, :cond_2

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v10

    if-ne v9, v10, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    const-string v10, "gsm.sim.sixmode"

    const-string v11, "GSM"

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "sixmode":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    const-string v10, "gsm.network.type"

    const-string v11, "Unknown"

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "networkType":Ljava/lang/String;
    const-string v9, "CDMA"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "1xRTT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v10, "IdleState: Call setDataAllowed under CDMA 1xRTT"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .local v2, "pb":Lcom/android/internal/telephony/PhoneBase;
    const-string v9, "ril.dds.progressing"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v12, v10}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .end local v1    # "networkType":Ljava/lang/String;
    .end local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "sixmode":Ljava/lang/String;
    .end local v8    # "subId":I
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    .restart local v8    # "subId":I
    const-string v9, "ril.dds.command_slot"

    invoke-static {v9, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "propertyCommandSlot":I
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v10

    if-ne v9, v10, :cond_3

    const-string v9, "ro.multisim.simslotcount"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v12, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    if-eq v3, v9, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignore because DDS is not matched. keep IdleState, DDS : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ril.dds.command_slot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .end local v3    # "propertyCommandSlot":I
    .end local v8    # "subId":I
    :goto_2
    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .end local v4    # "retVal":Z
    .restart local v3    # "propertyCommandSlot":I
    .restart local v8    # "subId":I
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .end local v3    # "propertyCommandSlot":I
    .end local v8    # "subId":I
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedReceived:Z
    invoke-static {v9, v12}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$902(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    goto :goto_2

    :sswitch_3
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v10, "IdleState: Receive invalid event EVENT_CONNECTED!"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_3
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
        0x44007 -> :sswitch_2
    .end sparse-switch
.end method
