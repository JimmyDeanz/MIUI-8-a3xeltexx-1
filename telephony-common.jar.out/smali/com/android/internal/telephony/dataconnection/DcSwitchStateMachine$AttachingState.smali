.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachingState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method

.method private doEnter()V
    .locals 14

    .prologue
    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 388
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsInCall:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v8

    if-nez v8, :cond_4

    .line 389
    const/4 v4, 0x1

    .line 390
    .local v4, "needCallDds":Z
    const/4 v0, 0x1

    .line 391
    .local v0, "SimEnable":Z
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    .line 392
    .local v7, "serviceState":I
    const-string v8, "ril.datacross.slotid"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, "datacrossSlotId":I
    sget v6, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    .line 395
    .local v6, "prevSubId":I
    sget-boolean v8, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    if-eqz v8, :cond_2

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 398
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AttachingState: DDS swtich Failed, DDS = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 400
    sput-boolean v13, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    .line 401
    if-nez v7, :cond_0

    .line 402
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState: DDS swtich Failed and Already Attached, transit to Attached state"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 403
    const/4 v4, 0x0

    .line 404
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 416
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z
    invoke-static {v8, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2902(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    .line 418
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v0

    .line 419
    const-string v8, "ro.multisim.simslotcount"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-le v8, v12, :cond_1

    if-ne v4, v12, :cond_1

    if-ne v0, v12, :cond_1

    .line 422
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 423
    .local v5, "pb":Lcom/android/internal/telephony/PhoneBase;
    const-string v8, "ril.dds.progressing"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v8, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v10, 0x43001

    iget v11, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    invoke-virtual {v9, v10, v11, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v12, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 429
    iget-object v8, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 430
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState executeAll due to autoAttach"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    .line 450
    .end local v0    # "SimEnable":Z
    .end local v1    # "datacrossSlotId":I
    .end local v4    # "needCallDds":Z
    .end local v5    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "prevSubId":I
    .end local v7    # "serviceState":I
    :cond_1
    :goto_1
    return-void

    .line 406
    .restart local v0    # "SimEnable":Z
    .restart local v1    # "datacrossSlotId":I
    .restart local v4    # "needCallDds":Z
    .restart local v6    # "prevSubId":I
    .restart local v7    # "serviceState":I
    :cond_2
    if-nez v7, :cond_3

    if-ne v1, v10, :cond_3

    const-string v8, "ril.dds.command_slot"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 408
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState: Already Attached, transit to Attached state"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 409
    const/4 v4, 0x0

    .line 410
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->broadcastDefaultDataSubIdChanged(I)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V

    .line 411
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 412
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v1, v10, :cond_0

    const-string v8, "0"

    const-string v9, "ril.dds.progressing"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 413
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState: not progressing DDS, so skip setDataAllowed"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 414
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 436
    .end local v0    # "SimEnable":Z
    .end local v1    # "datacrossSlotId":I
    .end local v4    # "needCallDds":Z
    .end local v6    # "prevSubId":I
    .end local v7    # "serviceState":I
    :cond_4
    const-string v8, "ril.dds.progressing"

    invoke-static {v8, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 437
    .local v3, "mIsDDSProcessing":I
    if-ne v3, v12, :cond_5

    .line 438
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IdleState: UE is calling using SIM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and DDS is under processing, send a failed intent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 439
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    const-string v8, "subscription"

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 443
    const-string v8, "ril.dds.progressing"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z
    invoke-static {v8, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2902(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    .line 446
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "IdleState: Transit to Idle state "

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 447
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "AttachingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 383
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 456
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 609
    const/4 v10, 0x0

    .line 612
    .local v10, "retVal":Z
    :goto_0
    return v10

    .line 458
    .end local v10    # "retVal":Z
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 459
    .local v2, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string v13, "DcSwitchStateMachine.AttachingState: REQ_CONNECT"

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AttachingState: REQ_CONNECT, apnRequest="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneBase;

    .line 463
    .local v8, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v13, v8, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v13

    if-nez v13, :cond_1

    .line 464
    if-eqz v2, :cond_0

    iget-object v13, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v13, v13, Landroid/net/NetworkRequest;->legacyType:I

    const/16 v14, 0xf

    if-ne v13, v14, :cond_0

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v14, "processing: REQ_CONNECT for Emergency type"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 474
    :cond_0
    :goto_1
    const/4 v10, 0x1

    .line 475
    .restart local v10    # "retVal":Z
    goto :goto_0

    .line 471
    .end local v10    # "retVal":Z
    :cond_1
    const-string v13, "DcSwitchStateMachine processing due to autoAttach"

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_1

    .line 478
    .end local v2    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v8    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 479
    .local v3, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eq v13, v14, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_DATA_ALLOWED ignored arg1="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", seq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 555
    :cond_2
    :goto_2
    const/4 v10, 0x1

    .line 556
    .restart local v10    # "retVal":Z
    goto/16 :goto_0

    .line 482
    .end local v10    # "retVal":Z
    :cond_3
    iget-object v13, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_7

    .line 483
    iget-object v13, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v13, v13, Lcom/android/internal/telephony/CommandException;

    if-eqz v13, :cond_4

    .line 484
    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    .line 485
    .local v5, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v13, v14, :cond_4

    .line 489
    const/4 v10, 0x1

    .line 490
    .restart local v10    # "retVal":Z
    goto/16 :goto_0

    .line 494
    .end local v5    # "e":Lcom/android/internal/telephony/CommandException;
    .end local v10    # "retVal":Z
    :cond_4
    const-string v13, "ro.multisim.simslotcount"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_6

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v14, "AttachingState: EVENT_DATA_ALLOWED, Failed"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 500
    sget v13, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    .line 501
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    .line 502
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    sget v14, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 503
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v13, 0x20000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 505
    const-string v13, "subscription"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 508
    const-string v13, "ril.dds.progressing"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v13, "ril.datacross.slotid"

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3202(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)I

    goto/16 :goto_2

    .line 515
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AttachingState: EVENT_DATA_ALLOWED, Failed, mRetryCountForDDS = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneBase;

    .line 518
    .restart local v8    # "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v13, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v14, 0x43001

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 520
    .local v9, "replyMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 521
    .local v7, "onDelay":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->RETRY_DDS_TIME:[I
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # operator++ for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3208(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v15

    aget v14, v14, v15

    int-to-long v14, v14

    invoke-virtual {v13, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 529
    .end local v7    # "onDelay":Landroid/os/Message;
    .end local v8    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v9    # "replyMsg":Landroid/os/Message;
    :cond_7
    iget-object v13, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_2

    const-string v13, "ro.multisim.simslotcount"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 531
    .restart local v7    # "onDelay":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v13

    iput v13, v7, Landroid/os/Message;->arg1:I

    .line 533
    const-string v13, "CTC"

    sget-object v14, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x1388

    invoke-virtual {v13, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 539
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AttachingState: EVENT_DATA_ALLOWED, Successed : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v11

    .line 543
    .local v11, "serviceState":I
    if-nez v11, :cond_8

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 547
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3202(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)I

    .line 551
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    .line 552
    const/4 v13, -0x1

    sput v13, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    goto/16 :goto_2

    .line 536
    .end local v11    # "serviceState":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0xbb8

    invoke-virtual {v13, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 560
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "onDelay":Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v14, "AttachingState going to retry"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 561
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 562
    const/4 v10, 0x1

    .line 563
    .restart local v10    # "retVal":Z
    goto/16 :goto_0

    .line 568
    .end local v10    # "retVal":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v14, "AttachingState: EVENT_DATA_ATTACHED"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 571
    const/4 v10, 0x1

    .line 572
    .restart local v10    # "retVal":Z
    goto/16 :goto_0

    .line 577
    .end local v10    # "retVal":Z
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v14, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneBase;

    .line 580
    .restart local v8    # "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v13, v8, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v14, "releasingAll due to autoAttach"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 591
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v13

    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v12

    .line 592
    .local v12, "subIds":[I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 593
    .local v4, "dataSubId":I
    const/4 v13, 0x0

    aget v13, v12, v13

    if-eq v4, v13, :cond_b

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 600
    :goto_4
    const/4 v10, 0x1

    .line 601
    .restart local v10    # "retVal":Z
    goto/16 :goto_0

    .line 598
    .end local v10    # "retVal":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v13, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    goto :goto_4

    .line 456
    nop

    :sswitch_data_0
    .sparse-switch
        0x43001 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44001 -> :sswitch_2
        0x44002 -> :sswitch_4
        0x44007 -> :sswitch_3
    .end sparse-switch
.end method
