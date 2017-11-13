.class Lcom/android/internal/telephony/CallManager$CallManagerHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/CallManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    const/16 v22, 0x0

    .local v22, "sealedState":Z
    const/4 v15, 0x0

    .local v15, "extendedCallInfoState":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v13

    .local v13, "context":Landroid/content/Context;
    const-string v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "sealedStateUri":Landroid/net/Uri;
    const/16 v23, 0x0

    .local v23, "sealedStateCr":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "getSealedState"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    :cond_1
    if-eqz v23, :cond_2

    :try_start_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "getSealedState"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const-string v1, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "extendedCallInfoStateUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .local v16, "extendedCallInfoStateCr":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "getExtendedCallInfoState"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    :cond_3
    if-eqz v16, :cond_4

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "getExtendedCallInfoState"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v15

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    if-eqz v22, :cond_0

    if-eqz v15, :cond_0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v21

    .local v21, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    .local v11, "callState":Lcom/android/internal/telephony/Call$State;
    new-instance v17, Landroid/content/Intent;

    const-string v1, "com.sec.action.CALL_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v17, "i":Landroid/content/Intent;
    const-string v1, "com.sec.intent.extra.PHONE_STATE"

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneConstants$State;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.intent.extra.CALL_STATE"

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v4    # "extendedCallInfoStateUri":Landroid/net/Uri;
    .end local v11    # "callState":Lcom/android/internal/telephony/Call$State;
    .end local v16    # "extendedCallInfoStateCr":Landroid/database/Cursor;
    .end local v17    # "i":Landroid/content/Intent;
    .end local v21    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_2
    const-string v1, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v14    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v4    # "extendedCallInfoStateUri":Landroid/net/Uri;
    .restart local v16    # "extendedCallInfoStateCr":Landroid/database/Cursor;
    :catch_1
    move-exception v14

    .restart local v14    # "e":Landroid/database/CursorWindowAllocationException;
    :try_start_3
    const-string v1, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v14    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_1
    move-exception v1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v2    # "sealedStateUri":Landroid/net/Uri;
    .end local v4    # "extendedCallInfoStateUri":Landroid/net/Uri;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "extendedCallInfoState":Z
    .end local v16    # "extendedCallInfoStateCr":Landroid/database/Cursor;
    .end local v22    # "sealedState":Z
    .end local v23    # "sealedStateCr":Landroid/database/Cursor;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/Connection;

    .local v10, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v24

    .local v24, "subId":I
    const/4 v12, 0x1

    .local v12, "canReceiveCall":Z
    const/16 v18, 0x0

    .local v18, "isEmergencyCallOnly":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # getter for: Lcom/android/internal/telephony/CallManager;->mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-static {v1}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    .local v20, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # getter for: Lcom/android/internal/telephony/CallManager;->mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-static {v1}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # getter for: Lcom/android/internal/telephony/CallManager;->mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-static {v1}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v18

    .end local v20    # "phoneNumber":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall(I)Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v12, :cond_6

    if-eqz v18, :cond_7

    :cond_6
    :try_start_4
    const-string v1, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silently drop incoming call: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v14

    .local v14, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CallManager"

    const-string v3, "new ringing connection"

    invoke-static {v1, v3, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v14    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v10    # "c":Lcom/android/internal/telephony/Connection;
    .end local v12    # "canReceiveCall":Z
    .end local v18    # "isEmergencyCallOnly":Z
    .end local v24    # "subId":I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_13
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v1, v1, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v1, v1, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v19

    .local v19, "notifyMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v19

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v19

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v17    # "i":I
    .end local v19    # "notifyMsg":Landroid/os/Message;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v1, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "CallManager"

    const-string v3, "CallModifyRequest received"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .local v9, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->notifyConnectionTypeChangeRequest(Landroid/os/AsyncResult;)V
    invoke-static {v1, v9}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x7a -> :sswitch_15
        0x3e8 -> :sswitch_16
    .end sparse-switch
.end method
