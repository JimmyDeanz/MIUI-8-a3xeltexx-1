.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneInterfaceManager;
    .param p2, "x1"    # Lcom/android/phone/PhoneInterfaceManager$1;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method

.method private handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 744
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 745
    .local v1, "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 746
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 755
    :goto_0
    monitor-enter v1

    .line 756
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 757
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    return-void

    .line 748
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 749
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": CommandException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unknown exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 235
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 737
    :pswitch_0
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 238
    .local v27, "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v25

    .line 239
    .local v25, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 243
    monitor-enter v27

    .line 244
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 245
    monitor-exit v27

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 239
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 250
    .end local v25    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 251
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 253
    .local v10, "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 257
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 258
    .local v12, "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 259
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 260
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 266
    :goto_2
    monitor-enter v27

    .line 267
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v27

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 263
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    .line 272
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 273
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 274
    .local v11, "answer_subId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal(I)V
    invoke-static {v3, v11}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;I)V

    goto/16 :goto_0

    .line 278
    .end local v11    # "answer_subId":I
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 279
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 281
    .local v15, "end_subId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v15}, Lcom/android/phone/PhoneInterfaceManager;->access$300(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v25

    .line 282
    .restart local v25    # "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v25, :cond_0

    .line 286
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v26

    .line 287
    .local v26, "phoneType":I
    const/4 v3, 0x2

    move/from16 v0, v26

    if-ne v0, v3, :cond_3

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v15}, Lcom/android/phone/PhoneInterfaceManager;->access$300(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    .line 298
    .local v18, "hungUp":Z
    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 300
    monitor-enter v27

    .line 301
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit v27

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 291
    .end local v18    # "hungUp":Z
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_4

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v18

    .restart local v18    # "hungUp":Z
    goto :goto_3

    .line 295
    .end local v18    # "hungUp":Z
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    .end local v15    # "end_subId":I
    .end local v25    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v26    # "phoneType":I
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 307
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 308
    .local v20, "iccArgument":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    if-nez v2, :cond_5

    .line 309
    const-string v3, "iccTransmitApduLogicalChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 310
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 311
    monitor-enter v27

    .line 312
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 313
    monitor-exit v27

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    .line 315
    :cond_5
    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 317
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 325
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v20    # "iccArgument":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 326
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 327
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 328
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 340
    :goto_4
    monitor-enter v27

    .line 341
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 342
    monitor-exit v27

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 330
    :cond_6
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 331
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_7

    .line 332
    const-string v3, "iccTransmitApduLogicalChannel: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_4

    .line 333
    :cond_7
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_8

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccTransmitApduLogicalChannel: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_4

    .line 337
    :cond_8
    const-string v3, "iccTransmitApduLogicalChannel: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_4

    .line 346
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 347
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 348
    .restart local v20    # "iccArgument":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    if-nez v2, :cond_9

    .line 349
    const-string v3, "iccTransmitApduBasicChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 350
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 351
    monitor-enter v27

    .line 352
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 353
    monitor-exit v27

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    .line 355
    :cond_9
    const/16 v3, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 357
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 364
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v20    # "iccArgument":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 365
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 366
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 367
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 379
    :goto_5
    monitor-enter v27

    .line 380
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 381
    monitor-exit v27

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v3

    .line 369
    :cond_a
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 370
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_b

    .line 371
    const-string v3, "iccTransmitApduBasicChannel: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_5

    .line 372
    :cond_b
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_c

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccTransmitApduBasicChannel: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_5

    .line 376
    :cond_c
    const-string v3, "iccTransmitApduBasicChannel: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_5

    .line 385
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 386
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 387
    .restart local v20    # "iccArgument":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    if-nez v2, :cond_d

    .line 388
    const-string v3, "iccExchangeSimIO: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 389
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 390
    monitor-enter v27

    .line 391
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 392
    monitor-exit v27

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v3

    .line 394
    :cond_d
    const/16 v3, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 396
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/UiccCard;->iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 403
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v20    # "iccArgument":Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 404
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 405
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_e

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_e

    .line 406
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 410
    :goto_6
    monitor-enter v27

    .line 411
    :try_start_8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 412
    monitor-exit v27

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit v27
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v3

    .line 408
    :cond_e
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6

    .line 416
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 417
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    if-nez v2, :cond_f

    .line 418
    const-string v3, "sendEnvelopeWithStatus: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 419
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 420
    monitor-enter v27

    .line 421
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 422
    monitor-exit v27

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v3

    .line 424
    :cond_f
    const/16 v3, 0x1a

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 425
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 430
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 431
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 432
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_10

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_10

    .line 433
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 445
    :goto_7
    monitor-enter v27

    .line 446
    :try_start_a
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v27

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v3

    .line 435
    :cond_10
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 436
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_11

    .line 437
    const-string v3, "sendEnvelopeWithStatus: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_7

    .line 438
    :cond_11
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_12

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEnvelopeWithStatus: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_7

    .line 442
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEnvelopeWithStatus: exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_7

    .line 451
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 452
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    if-nez v2, :cond_13

    .line 453
    const-string v3, "iccOpenLogicalChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 454
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 455
    monitor-enter v27

    .line 456
    :try_start_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 457
    monitor-exit v27

    goto/16 :goto_0

    :catchall_b
    move-exception v3

    monitor-exit v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v3

    .line 459
    :cond_13
    const/16 v3, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 460
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 465
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 466
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 468
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_15

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_15

    .line 469
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v28, v3

    check-cast v28, [I

    .line 470
    .local v28, "result":[I
    const/4 v3, 0x0

    aget v14, v28, v3

    .line 471
    .local v14, "channelId":I
    const/16 v29, 0x0

    .line 472
    .local v29, "selectResponse":[B
    move-object/from16 v0, v28

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_14

    .line 473
    move-object/from16 v0, v28

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    new-array v0, v3, [B

    move-object/from16 v29, v0

    .line 474
    const/16 v19, 0x1

    .local v19, "i":I
    :goto_8
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_14

    .line 475
    add-int/lit8 v3, v19, -0x1

    aget v4, v28, v19

    int-to-byte v4, v4

    aput-byte v4, v29, v3

    .line 474
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 478
    .end local v19    # "i":I
    :cond_14
    new-instance v23, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v14, v3, v1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    .line 501
    .end local v14    # "channelId":I
    .end local v28    # "result":[I
    .end local v29    # "selectResponse":[B
    .local v23, "openChannelResp":Landroid/telephony/IccOpenLogicalChannelResponse;
    :goto_9
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 502
    monitor-enter v27

    .line 503
    :try_start_c
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit v27

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    monitor-exit v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v3

    .line 481
    .end local v23    # "openChannelResp":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_15
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_16

    .line 482
    const-string v3, "iccOpenLogicalChannel: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 484
    :cond_16
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_17

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccOpenLogicalChannel: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 488
    :cond_17
    const/16 v17, 0x4

    .line 489
    .local v17, "errorCode":I
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_18

    .line 490
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v16

    .line 492
    .local v16, "error":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_19

    .line 493
    const/16 v17, 0x2

    .line 498
    .end local v16    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_18
    :goto_a
    new-instance v23, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-direct {v0, v3, v1, v4}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    .restart local v23    # "openChannelResp":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_9

    .line 494
    .end local v23    # "openChannelResp":Landroid/telephony/IccOpenLogicalChannelResponse;
    .restart local v16    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_19
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_18

    .line 495
    const/16 v17, 0x3

    goto :goto_a

    .line 508
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "error":Lcom/android/internal/telephony/CommandException$Error;
    .end local v17    # "errorCode":I
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 509
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    if-nez v2, :cond_1a

    .line 510
    const-string v3, "iccCloseLogicalChannel: No UICC"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 511
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 512
    monitor-enter v27

    .line 513
    :try_start_d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 514
    monitor-exit v27

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    monitor-exit v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v3

    .line 516
    :cond_1a
    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 517
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 522
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_11
    const-string v3, "iccCloseLogicalChannel"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 527
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 528
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3, v10}, Lcom/android/internal/telephony/Phone;->nvReadItem(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 532
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 533
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 534
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1b

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1b

    .line 535
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 547
    :goto_b
    monitor-enter v27

    .line 548
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 549
    monitor-exit v27

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v27
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v3

    .line 537
    :cond_1b
    const-string v3, ""

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 538
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1c

    .line 539
    const-string v3, "nvReadItem: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_b

    .line 540
    :cond_1c
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1d

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nvReadItem: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_b

    .line 544
    :cond_1d
    const-string v3, "nvReadItem: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_b

    .line 553
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 554
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 555
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/util/Pair;

    .line 556
    .local v21, "idValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3, v10}, Lcom/android/internal/telephony/Phone;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 560
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v21    # "idValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_15
    const-string v3, "nvWriteItem"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 564
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 565
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 566
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3, v10}, Lcom/android/internal/telephony/Phone;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 570
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_17
    const-string v3, "nvWriteCdmaPrl"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 575
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 576
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3, v10}, Lcom/android/internal/telephony/Phone;->nvResetConfig(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 580
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_19
    const-string v3, "nvResetConfig"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 585
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 586
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 590
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 591
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 592
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1e

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1e

    .line 593
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 605
    :goto_c
    monitor-enter v27

    .line 606
    :try_start_f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 607
    monitor-exit v27

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    monitor-exit v27
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v3

    .line 595
    :cond_1e
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 596
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1f

    .line 597
    const-string v3, "getPreferredNetworkType: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_c

    .line 598
    :cond_1f
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_20

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredNetworkType: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_c

    .line 602
    :cond_20
    const-string v3, "getPreferredNetworkType: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_c

    .line 611
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 612
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 613
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 614
    .local v22, "networkType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move/from16 v0, v22

    invoke-interface {v3, v0, v10}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 618
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v22    # "networkType":I
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1d
    const-string v3, "setPreferredNetworkType"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 623
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 624
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3, v10}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 628
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 629
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 630
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iput-object v12, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 631
    monitor-enter v27

    .line 632
    :try_start_10
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 633
    monitor-exit v27

    goto/16 :goto_0

    :catchall_10
    move-exception v3

    monitor-exit v27
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v3

    .line 637
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 638
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x22

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 639
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/util/Pair;

    .line 640
    .local v30, "tagNum":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4, v10}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 645
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v30    # "tagNum":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_21
    const-string v3, "setVoicemailNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :pswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 650
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 652
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 656
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_23
    const-string v3, "setNetworkSelectionModeAutomatic"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 660
    :pswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 661
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 662
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 666
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_25
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 667
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 669
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_21

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_21

    .line 670
    new-instance v13, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v4, 0x1

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {v13, v4, v3}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    .line 692
    .local v13, "cellScanResult":Lcom/android/internal/telephony/CellNetworkScanResult;
    :goto_d
    move-object/from16 v0, v27

    iput-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 693
    monitor-enter v27

    .line 694
    :try_start_11
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 695
    monitor-exit v27

    goto/16 :goto_0

    :catchall_11
    move-exception v3

    monitor-exit v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v3

    .line 674
    .end local v13    # "cellScanResult":Lcom/android/internal/telephony/CellNetworkScanResult;
    :cond_21
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_22

    .line 675
    const-string v3, "getCellNetworkScanResults: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 677
    :cond_22
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_23

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellNetworkScanResults: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    .line 680
    :cond_23
    const/16 v17, 0x4

    .line 681
    .restart local v17    # "errorCode":I
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_24

    .line 682
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v16

    .line 684
    .restart local v16    # "error":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_25

    .line 685
    const/16 v17, 0x2

    .line 690
    .end local v16    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_24
    :goto_e
    new-instance v13, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-direct {v13, v0, v3}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    .restart local v13    # "cellScanResult":Lcom/android/internal/telephony/CellNetworkScanResult;
    goto :goto_d

    .line 686
    .end local v13    # "cellScanResult":Lcom/android/internal/telephony/CellNetworkScanResult;
    .restart local v16    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_25
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_24

    .line 687
    const/16 v17, 0x3

    goto :goto_e

    .line 699
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "error":Lcom/android/internal/telephony/CommandException$Error;
    .end local v17    # "errorCode":I
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 700
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/OperatorInfo;

    .line 701
    .local v24, "operator":Lcom/android/internal/telephony/OperatorInfo;
    const/16 v3, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 703
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v27

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v0}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0, v10}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 707
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v24    # "operator":Lcom/android/internal/telephony/OperatorInfo;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_27
    const-string v3, "setNetworkSelectionModeManual"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    :pswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 712
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 713
    .restart local v10    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/android/internal/telephony/Phone;->getModemActivityInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 717
    .end local v10    # "onCompleted":Landroid/os/Message;
    .end local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_29
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 718
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 719
    .restart local v27    # "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_26

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_26

    .line 720
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 731
    :goto_f
    monitor-enter v27

    .line 732
    :try_start_12
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 733
    monitor-exit v27

    goto/16 :goto_0

    :catchall_12
    move-exception v3

    monitor-exit v27
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v3

    .line 722
    :cond_26
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_27

    .line 723
    const-string v3, "queryModemActivityInfo: Empty response"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_f

    .line 724
    :cond_27
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_28

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryModemActivityInfo: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_f

    .line 728
    :cond_28
    const-string v3, "queryModemActivityInfo: Unknown exception"

    # invokes: Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Ljava/lang/String;)V

    goto :goto_f

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_c
        :pswitch_d
        :pswitch_1e
        :pswitch_1f
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_28
        :pswitch_29
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method
