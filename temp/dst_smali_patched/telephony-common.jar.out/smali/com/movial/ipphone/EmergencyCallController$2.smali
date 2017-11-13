.class Lcom/movial/ipphone/EmergencyCallController$2;
.super Landroid/os/Handler;
.source "EmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/EmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/EmergencyCallController;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/EmergencyCallController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    const-string v13, "EmergencyCallController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No such event defined: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v13, "EmergencyCallController"

    const-string v14, "Receive EVENT_CALL_DISCONNECT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .local v4, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v3

    .local v3, "cause":I
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$200(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$300(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    const-string v13, "EmergencyCallController"

    const-string v14, "start EMERGENCY_DELAYED_IMS_REGISTRATION in EVENT_CALL_DISCONNECT timer: 180000"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x0

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$302(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/movial/ipphone/EmergencyCallController$2;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v16, 0x2bf20

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v13

    sget-object v14, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-eq v13, v14, :cond_4

    const/16 v13, 0x12

    if-eq v3, v13, :cond_5

    const/16 v13, 0x24

    if-eq v3, v13, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x3

    if-ne v3, v13, :cond_6

    :cond_5
    const-string v13, "EmergencyCallController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GSM E911 Failed cause = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/movial/ipphone/IPPhoneProxy;->getForceEmergencyMode()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$600(Lcom/movial/ipphone/EmergencyCallController;)I

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "EmergencyCallController"

    const-string v14, "Trigger CS->IMS fallback"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v14, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/movial/ipphone/IPPhoneProxy;->setRadioPower(Z)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .local v5, "dial":Landroid/content/Intent;
    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tel:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->cachedEmergencyNumber:Ljava/lang/String;
    invoke-static {v14}, Lcom/movial/ipphone/EmergencyCallController;->access$700(Lcom/movial/ipphone/EmergencyCallController;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v13, "movial_ims_call"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v13, "EmergencyCallController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ActivityNotFoundException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "dial":Landroid/content/Intent;
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v13

    sget-object v14, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x3

    if-ne v3, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v14, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/movial/ipphone/IPPhoneProxy;->setRadioPower(Z)V

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cause":I
    .end local v4    # "conn":Lcom/android/internal/telephony/Connection;
    :pswitch_1
    const-string v13, "EmergencyCallController"

    const-string v14, "Receive EVENT_CS_EMERGENCY_TIMEOUT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIMSRegistered:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$900(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "EmergencyCallController"

    const-string v14, "ims is not registered. Do not fallback to IMS."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_0

    const-string v13, "EmergencyCallController"

    const-string v14, "hangup gsm emergency call..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$502(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    .local v6, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v13, "EmergencyCallController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hangup call failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "e":Lcom/android/internal/telephony/CallStateException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    .local v12, "state":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/movial/ipphone/IPPhoneProxy;->getForceEmergencyMode()Z

    move-result v7

    .local v7, "forceEmergency":Z
    const-string v13, "EmergencyCallController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Receive EVENT_PHONE_STATE_CHANGED: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, "isCSEmergencyUnderWifiCall":Z
    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "CELL_ONLY"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_11

    const/4 v10, 0x1

    .local v10, "isWifiCallEnabled":Z
    :goto_1
    const/4 v9, 0x0

    .local v9, "isEmergencyCall":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    :cond_8
    if-nez v7, :cond_a

    if-eqz v9, :cond_a

    if-nez v10, :cond_9

    sget-object v13, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_a

    :cond_9
    const/4 v8, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "PREFERRED_OPTION"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .local v11, "profile":I
    if-nez v7, :cond_b

    if-eqz v9, :cond_b

    if-eqz v10, :cond_b

    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    sget-object v13, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_b

    const-string v13, "EmergencyCallController"

    const-string v14, "disabling wifi call temporarily..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "CELL_ONLY"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "ECM"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$202(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$1102(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    .end local v9    # "isEmergencyCall":Z
    .end local v10    # "isWifiCallEnabled":Z
    .end local v11    # "profile":I
    :cond_b
    if-nez v7, :cond_c

    if-eqz v8, :cond_d

    :cond_c
    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_d

    const-string v13, "EmergencyCallController"

    const-string v14, "disabling wifi call..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "CELL_ONLY"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "ECM"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$202(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    :cond_d
    if-nez v7, :cond_e

    if-eqz v8, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$200(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-eqz v13, :cond_f

    sget-object v13, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v12, v13, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$300(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_0

    :cond_10
    const-string v13, "EmergencyCallController"

    const-string v14, "start EMERGENCY_DELAYED_IMS_REGISTRATION timer: 180000"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x0

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$302(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/movial/ipphone/EmergencyCallController$2;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1100(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x0

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$1102(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v16, 0x2bf20

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v7    # "forceEmergency":Z
    .end local v8    # "isCSEmergencyUnderWifiCall":Z
    .end local v12    # "state":Lcom/android/internal/telephony/Call$State;
    :pswitch_3
    const-string v13, "EmergencyCallController"

    const-string v14, "Receive EVENT_DELAYED_IMS_REGISTRATION"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v13, v14, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "ECM"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "CELL_ONLY"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x0

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$202(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    goto/16 :goto_0

    :cond_13
    const-string v13, "EmergencyCallController"

    const-string v14, "Phone not idle, delay the time to resume IMS"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v14, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$302(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v12, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/telephony/ServiceState;

    .local v12, "state":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I
    invoke-static {v13, v14}, Lcom/movial/ipphone/EmergencyCallController;->access$1202(Lcom/movial/ipphone/EmergencyCallController;I)I

    const-string v13, "EmergencyCallController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Receive EVENT_SERVICE_STATE_CHANGED, state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I
    invoke-static {v15}, Lcom/movial/ipphone/EmergencyCallController;->access$1200(Lcom/movial/ipphone/EmergencyCallController;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
