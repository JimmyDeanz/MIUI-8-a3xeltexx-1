.class Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;
.super Landroid/os/Handler;
.source "WifiHs20SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 367
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 370
    :sswitch_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 371
    .local v3, "nMethodType":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 373
    .local v4, "credential_type":I
    const-string v1, "HS20SubscriptionManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received CMD_ESTABLISH_TLS credType:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Method Type:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",args:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->credentialType:I
    invoke-static {v1, v4}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1502(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;I)I

    .line 376
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 377
    .local v9, "args":[Ljava/lang/String;
    const-string v1, "HS20SubscriptionManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "args.len: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v1, v9

    if-ge v11, v1, :cond_1

    .line 379
    const-string v1, "HS20SubscriptionManager"

    aget-object v17, v9, v11

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 385
    :cond_1
    array-length v1, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->ARGS_DEFINED_LENGTH:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v1, v0, :cond_0

    .line 386
    const/4 v1, 0x0

    aget-object v16, v9, v1

    .line 387
    .local v16, "strRemediation":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v9, v1

    .line 388
    .local v2, "strOSU":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v6, v9, v1

    .line 389
    .local v6, "requestReason":Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v1, v9, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 390
    .local v7, "credential_id":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 391
    .local v5, "nRemediation":I
    const-string v1, "HS20SubscriptionManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->establishTLS(Ljava/lang/String;IIILjava/lang/String;I)Z

    goto/16 :goto_0

    .line 398
    .end local v2    # "strOSU":Ljava/lang/String;
    .end local v3    # "nMethodType":I
    .end local v4    # "credential_type":I
    .end local v5    # "nRemediation":I
    .end local v6    # "requestReason":Ljava/lang/String;
    .end local v7    # "credential_id":I
    .end local v9    # "args":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v16    # "strRemediation":Ljava/lang/String;
    :sswitch_1
    const-string v1, "HS20SubscriptionManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received CMD_UPDATE_MO, flag="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 400
    .local v13, "nFlag":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual {v1, v13}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->updateMO(I)V

    goto/16 :goto_0

    .line 403
    .end local v13    # "nFlag":I
    :sswitch_2
    const-string v1, "HS20SubscriptionManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received CMD_RELEASE_TLS, flag="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->releaseTLS(I)V

    goto/16 :goto_0

    .line 407
    :sswitch_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 408
    .local v14, "nType":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 409
    .local v8, "Status":I
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 410
    .local v15, "strReason":Ljava/lang/String;
    const-string v1, "HS20SubscriptionManager"

    const-string v17, "Received CMD_SEND_SOAP_REQUEST"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual {v1, v14, v15, v8}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->sendSoapRequest(ILjava/lang/String;I)Z

    goto/16 :goto_0

    .line 414
    .end local v8    # "Status":I
    .end local v14    # "nType":I
    .end local v15    # "strReason":Ljava/lang/String;
    :sswitch_4
    const-string v1, "HS20SubscriptionManager"

    const-string v17, "Received CMD_VERIFY_AAA"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->credentialType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1500(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->verifyTrustRoots(I)Z

    goto/16 :goto_0

    .line 420
    :sswitch_5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 421
    .local v12, "nCommand":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 422
    .local v10, "flag":I
    const-string v1, "HS20SubscriptionManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received CMD_EXECUTE_COMMAND: Command="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual {v1, v12, v10}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->executeCommand(II)I

    goto/16 :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_3
        0x4e21 -> :sswitch_0
        0x4e22 -> :sswitch_1
        0x4e23 -> :sswitch_4
        0x4e24 -> :sswitch_2
        0x4e25 -> :sswitch_5
    .end sparse-switch
.end method
