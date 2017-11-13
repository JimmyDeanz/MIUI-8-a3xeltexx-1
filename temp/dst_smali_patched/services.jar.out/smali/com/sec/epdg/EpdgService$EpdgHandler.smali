.class Lcom/sec/epdg/EpdgService$EpdgHandler;
.super Landroid/os/Handler;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .local v21, "cid":I
    const/16 v17, 0x0

    .local v17, "apnType":Ljava/lang/String;
    const/16 v33, -0x1

    .local v33, "networkType":I
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: cid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const-string v2, "[RIL->EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .local v30, "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x5

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4300(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;II)V

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_1

    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v33

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3500(Lcom/sec/epdg/EpdgService;Z)V

    :cond_1
    const/16 v2, 0xb

    move/from16 v0, v33

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    move/from16 v0, v33

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v29, Landroid/content/Intent;

    const-string v2, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v29, "infoToIMSCII":Landroid/content/Intent;
    const-string v2, "apntype"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ikeerror"

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "count"

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v29    # "infoToIMSCII":Landroid/content/Intent;
    :cond_3
    # getter for: Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4502(I)I

    goto/16 :goto_0

    .end local v30    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_1
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    const/16 v33, -0x1

    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v33

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3500(Lcom/sec/epdg/EpdgService;Z)V

    :cond_4
    const/16 v2, 0xb

    move/from16 v0, v33

    if-ne v0, v2, :cond_5

    const-string v2, "[EPDGService]"

    const-string v4, "IPsec disconnected,  stop TEPDGLTE and 1x timer and allow mobile attach"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_5
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .restart local v30    # "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x7

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4300(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;II)V

    goto/16 :goto_0

    .end local v30    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_2
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .restart local v30    # "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x6

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4300(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;II)V

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_6

    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v33

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v2, 0xb

    move/from16 v0, v33

    if-eq v0, v2, :cond_7

    const/16 v2, 0xf

    move/from16 v0, v33

    if-ne v0, v2, :cond_8

    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x30

    if-ne v2, v4, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/sec/epdg/IWlanConnectResult;

    .local v40, "result":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual/range {v40 .. v40}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v41

    .local v41, "resultError":Lcom/sec/epdg/IWlanError;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v41 .. v41}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v41 .. v41}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v4, 0x18

    if-ne v2, v4, :cond_9

    const-string v2, "[EPDGService]"

    const-string v4, "AUTHENTICATION_FAILED. Do not send fail intent here for Rogers"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v40    # "result":Lcom/sec/epdg/IWlanConnectResult;
    .end local v41    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_8
    :goto_1
    const/16 v2, 0xb

    move/from16 v0, v33

    if-ne v0, v2, :cond_0

    const-string v2, "[EPDGService]"

    const-string v4, "IPsec Error/failure,  stop TEPDGLTE and 1x timer and allow mobile attach"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    goto/16 :goto_0

    .restart local v40    # "result":Lcom/sec/epdg/IWlanConnectResult;
    .restart local v41    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "apnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v23, v2, 0x1

    .local v23, "count":I
    invoke-virtual/range {v40 .. v40}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v2

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-static {v0, v2, v1}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V

    goto :goto_1

    .end local v16    # "apnName":Ljava/lang/String;
    .end local v23    # "count":I
    .end local v30    # "msgToHandoverSM":Landroid/os/Message;
    .end local v40    # "result":Lcom/sec/epdg/IWlanConnectResult;
    .end local v41    # "resultError":Lcom/sec/epdg/IWlanError;
    :sswitch_3
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .restart local v30    # "msgToHandoverSM":Landroid/os/Message;
    const/16 v2, 0x8

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4300(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;II)V

    goto/16 :goto_0

    .end local v30    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_4
    const-string v2, "[EPDGService]"

    const-string v4, "IWLAN_EVENT_CONNECT_INIT received. Ignore it."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4600()Z

    move-result v4

    if-ne v2, v4, :cond_a

    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4602(Z)Z

    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4700(Lcom/sec/epdg/EpdgService;)V

    :cond_a
    :goto_2
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4900()Z

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4902(Z)Z

    const/4 v2, 0x2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_b
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger W2L is not applicable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mActiveRat:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4800()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger L2W is not applicable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mActiveRat:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4800()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .local v19, "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    .local v22, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;->getCid()I

    move-result v21

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect request is received for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v21, :cond_d

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v31

    .local v31, "msgtoHandoverSM":Landroid/os/Message;
    const/16 v2, 0xf

    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v31 .. v31}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v31    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_d
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    .restart local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;->getCid()I

    move-result v21

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect request is received for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v21, :cond_e

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v31

    .restart local v31    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v31 .. v31}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v31    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_e
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    .local v35, "obj":Ljava/lang/Object;
    if-eqz v35, :cond_f

    move-object/from16 v0, v35

    instance-of v2, v0, Landroid/os/AsyncResult;

    if-eqz v2, :cond_f

    move-object/from16 v19, v35

    check-cast v19, Landroid/os/AsyncResult;

    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .local v22, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getCid()I

    move-result v21

    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    :cond_f
    if-lez v21, :cond_10

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v31

    .restart local v31    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v31

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v31 .. v31}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v31    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_10
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v35    # "obj":Ljava/lang/Object;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;

    .local v22, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->getCid()I

    move-result v21

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->getRat()I

    move-result v37

    .local v37, "rat":I
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->isWifiOrMobile()Z

    move-result v47

    .local v47, "wifiOrMobile":Z
    if-lez v21, :cond_13

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v31

    .restart local v31    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x4

    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xff

    move/from16 v0, v37

    if-ne v0, v2, :cond_11

    const/16 v2, 0xff

    :goto_3
    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v31 .. v31}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_11
    if-eqz v47, :cond_12

    const/16 v2, 0x30

    goto :goto_3

    :cond_12
    const/16 v2, 0x21

    goto :goto_3

    .end local v31    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_13
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
    .end local v37    # "rat":I
    .end local v47    # "wifiOrMobile":Z
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .local v36, "pdnType":I
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v36, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v33

    const/4 v2, -0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_14

    :try_start_0
    const-string v2, "[HANDOFF]"

    const-string v4, "Fallback W2L handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v33

    # invokes: Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$5000(Lcom/sec/epdg/EpdgService;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v26

    .local v26, "e":Landroid/os/RemoteException;
    const-string v2, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W2L handover failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v26    # "e":Landroid/os/RemoteException;
    :cond_14
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid network type for W2L handover, networkType is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v36    # "pdnType":I
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_L2W_IF_REQUIRED event received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v17

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "[EPDGService]"

    const-string v4, "DATA_RETRY_TIMER_EXPIRED event received."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/util/Pair;

    .local v18, "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v2, v4}, Lcom/sec/epdg/EpdgService;->access$5100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v18    # "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .restart local v16    # "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2300(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting Epdg NOT Available to Framework and RIL. Triggered by failure of:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " APN ipsec connection over ePDG."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi is disconnected. EPDG is already UNAVAILABLE"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v16    # "apnName":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    .local v24, "data":Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getCid()I

    move-result v3

    .local v3, "apnConnCid":I
    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getApnType()Ljava/lang/String;

    move-result-object v17

    const/4 v8, 0x0

    .local v8, "isPermanentFail":Z
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update apn connection status for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update apn connection status for apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPermanentFail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->isConnSuccess()Z

    move-result v4

    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->isHandover()Z

    move-result v6

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->isAttachApn(I)Z

    move-result v7

    invoke-interface/range {v2 .. v8}, Lcom/sec/epdg/EpdgRilInterface;->updateApnConnStatus(IZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;ZZZ)V

    goto/16 :goto_0

    .end local v3    # "apnConnCid":I
    .end local v8    # "isPermanentFail":Z
    .end local v24    # "data":Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Boolean;

    .local v28, "handoverToWifi":Ljava/lang/Boolean;
    invoke-static/range {v21 .. v21}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(I)Z

    move-result v45

    .local v45, "supressW2L":Z
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger HO. Cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handovertoWifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "supressW2L: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v45, :cond_16

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v31

    .restart local v31    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v31 .. v31}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v31    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegisteringToMobile()Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, v21

    invoke-interface {v2, v0, v4}, Lcom/sec/epdg/EpdgRilInterface;->triggerHandover(IZ)V

    goto/16 :goto_0

    :cond_17
    const-string v2, "[EPDGService]"

    const-string v4, "Delay Trigger HO - IMS registering"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, v21

    invoke-interface {v2, v0, v4}, Lcom/sec/epdg/EpdgRilInterface;->triggerHandover(IZ)V

    goto/16 :goto_0

    .end local v28    # "handoverToWifi":Ljava/lang/Boolean;
    .end local v45    # "supressW2L":Z
    :sswitch_10
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    const/16 v40, 0x1

    .local v40, "result":Z
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying registrants, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v40

    move-object/from16 v1, v17

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5400(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .end local v40    # "result":Z
    :cond_19
    const/16 v40, 0x0

    goto :goto_4

    .restart local v40    # "result":Z
    :cond_1a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v40

    move-object/from16 v1, v17

    # invokes: Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5500(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .end local v40    # "result":Z
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :sswitch_12
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v39

    .local v39, "reportDnsStatus":Landroid/os/Message;
    const/16 v2, 0xc

    move-object/from16 v0, v39

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "[EPDGService]"

    const-string v4, "No DNS packets need to be sent to EPDG. DNS already resolved!"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, v39

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/Boolean;

    .local v32, "needFlush":Ljava/lang/Boolean;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_1c

    sget-object v38, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    .local v38, "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    :goto_5
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v40

    .restart local v40    # "result":Z
    const/4 v2, 0x1

    move/from16 v0, v40

    if-ne v2, v0, :cond_1d

    const-string v2, "[EPDGService]"

    const-string v4, "DNS Resolution was succesful."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiProfiling()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2500(Lcom/sec/epdg/EpdgService;)V

    const/4 v2, 0x1

    move-object/from16 v0, v39

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v38    # "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .end local v40    # "result":Z
    :cond_1c
    sget-object v38, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DNS_TTL_CHECK:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    goto :goto_5

    .restart local v38    # "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .restart local v40    # "result":Z
    :cond_1d
    const-string v2, "[EPDGService]"

    const-string v4, "DNS resolution failed."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v39

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v32    # "needFlush":Ljava/lang/Boolean;
    .end local v38    # "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .end local v39    # "reportDnsStatus":Landroid/os/Message;
    .end local v40    # "result":Z
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->handleMapconChange()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5700(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_16
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCallInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5900(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi ip config timer finished, call DNS"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6100()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6200(Lcom/sec/epdg/EpdgService$IpType;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6300(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :sswitch_1b
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2300(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->pollAndGetWifiRssi()V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .local v20, "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received CALL_STATUS_CHANGE event, call status is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_22

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v2

    if-eqz v2, :cond_1e

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2300(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6400(Lcom/sec/epdg/EpdgService;)V

    :cond_1e
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    :cond_1f
    :goto_6
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_20

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_20

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_2e

    :cond_20
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startLteProfiling()V

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopCdmaProfiling()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    :cond_21
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_22
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_23

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_25

    :cond_23
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_24

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_6

    :cond_24
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_6

    :cond_25
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_1f

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    const/16 v6, -0x64

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    if-nez v2, :cond_28

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    :goto_7
    invoke-virtual {v4, v5, v6, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThreshold(III)V

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getE911CallCount()I

    move-result v27

    .local v27, "e911CallCount":I
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v34

    .local v34, "nonE911CallCount":I
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e911CallCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nonE911CallCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move/from16 v0, v27

    if-lt v0, v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static/range {v27 .. v27}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    :cond_26
    :goto_8
    const/4 v2, 0x1

    move/from16 v0, v34

    if-lt v0, v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static/range {v34 .. v34}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    :cond_27
    :goto_9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6700(Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v27    # "e911CallCount":I
    .end local v34    # "nonE911CallCount":I
    :cond_28
    const/16 v2, -0x64

    goto :goto_7

    .restart local v27    # "e911CallCount":I
    .restart local v34    # "nonE911CallCount":I
    :cond_29
    if-nez v27, :cond_2a

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    goto :goto_8

    :cond_2a
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid e911 call count"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_2b
    if-nez v34, :cond_2c

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousNonE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    goto :goto_9

    :cond_2c
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid non e911 call count"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .end local v27    # "e911CallCount":I
    .end local v34    # "nonE911CallCount":I
    :cond_2d
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_2e
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_36

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopL2WHandoverProfiling()V

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "[EPDGService]"

    const-string v4, "IPME is connected skip stop LTE profiling"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_a
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_30

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startCdmaProfiling()V

    :cond_30
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    :cond_31
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousNonE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    :cond_32
    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6800()V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "apnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v16

    # invokes: Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$6900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v42

    .local v42, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v42, :cond_33

    invoke-virtual/range {v42 .. v42}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v25

    .local v25, "dataRetryExpired":Landroid/os/Message;
    if-eqz v25, :cond_35

    const-string v2, "[EPDGService]"

    const-string v4, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    move-object/from16 v0, v25

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    .end local v16    # "apnName":Ljava/lang/String;
    .end local v25    # "dataRetryExpired":Landroid/os/Message;
    .end local v42    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_33
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_34
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    if-nez v2, :cond_2f

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopLteProfiling()V

    goto/16 :goto_a

    .restart local v16    # "apnName":Ljava/lang/String;
    .restart local v25    # "dataRetryExpired":Landroid/os/Message;
    .restart local v42    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_35
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .end local v16    # "apnName":Ljava/lang/String;
    .end local v25    # "dataRetryExpired":Landroid/os/Message;
    .end local v42    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_36
    const-string v2, "[EPDGService]"

    const-string v4, "Unhandled case"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v20    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .local v15, "IpmeStatus":Z
    if-nez v15, :cond_38

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-nez v2, :cond_37

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    if-nez v2, :cond_37

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopLteProfiling()V

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_38
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startLteProfiling()V

    goto/16 :goto_0

    .end local v15    # "IpmeStatus":Z
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3a

    const/4 v13, 0x1

    :goto_c
    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7000(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnSettings(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7100(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    :cond_3a
    const/4 v13, 0x0

    goto :goto_c

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    const/4 v13, 0x1

    :goto_d
    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7000(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVolteProvisioningStateChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    :cond_3c
    const/4 v13, 0x0

    goto :goto_d

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$1700(Lcom/sec/epdg/EpdgService;)I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    const/16 v2, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgService$EpdgHandler;->removeMessages(I)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x37

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2300(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6400(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3e

    const/4 v11, 0x1

    :goto_e
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7000(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVoWifiProvisioningStateChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7300(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    :cond_3e
    const/4 v11, 0x0

    goto :goto_e

    :sswitch_24
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_42

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_40

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-nez v2, :cond_40

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_40

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v2

    if-eqz v2, :cond_3f

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_3f
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    :cond_40
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v4, 0x12

    if-ne v2, v4, :cond_41

    const-string v2, "[EPDGService]"

    const-string v4, "IMS_REG_STATUS_CHANGE case 1"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3500(Lcom/sec/epdg/EpdgService;Z)V

    :cond_41
    :goto_f
    # getter for: Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7800()Lcom/sec/epdg/EpdgService$HoDelayStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    goto/16 :goto_0

    :cond_42
    # getter for: Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7400()Z

    move-result v2

    if-eqz v2, :cond_4a

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_4a

    const-string v2, "[EPDGService]"

    const-string v4, "DE-registration finished. start WIFI disconnection"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v2, :cond_43

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7500()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v2, v4, :cond_45

    :cond_43
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_44

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorMTN()Z

    move-result v2

    if-nez v2, :cond_45

    :cond_44
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_45
    const-string v2, "[EPDGService]"

    const-string v4, "start EPDG disconnection "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    :cond_46
    :goto_10
    # getter for: Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7600()Z

    move-result v2

    if-eqz v2, :cond_48

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v21

    if-lez v21, :cond_47

    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v31

    .restart local v31    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v31

    iput v2, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v31 .. v31}, Landroid/os/Message;->sendToTarget()V

    const-string v2, "[EPDGService]"

    const-string v4, "disconnect ims pdn after de-registered "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v31    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_47
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7602(Z)Z

    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3500(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_f

    :cond_49
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldWaitForDeregWhenWiffiCallingOff()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "[EPDGService]"

    const-string v4, "start EPDG disconnection and disconnect ims pdn"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    :cond_4a
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    # invokes: Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    const-string v2, "[EPDGService]"

    const-string v4, "start EPDG disconnection "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_f

    :sswitch_25
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received VOPS_STATUS_CHANGED as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7900(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "[EPDGService]"

    const-string v4, "Received DNS ping result"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "apnType":Ljava/lang/String;
    if-eqz v17, :cond_4b

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8000(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[EPDGService]"

    const-string v4, "Send cdma availability to IMS"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8100(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    :cond_4b
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid APNType"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_28
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4c

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    :goto_11
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4d

    const/4 v2, 0x1

    :goto_12
    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v4, v2}, Lcom/sec/epdg/EpdgService;->access$2800(Lcom/sec/epdg/EpdgService;Z)Z

    goto/16 :goto_0

    :cond_4c
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v17

    goto :goto_11

    :cond_4d
    const/4 v2, 0x0

    goto :goto_12

    :sswitch_29
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4f

    const/16 v40, 0x1

    .restart local v40    # "result":Z
    :goto_13
    if-eqz v40, :cond_50

    # invokes: Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8200()Z

    move-result v2

    if-nez v2, :cond_4e

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    :cond_4e
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6700(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v40    # "result":Z
    :cond_4f
    const/16 v40, 0x0

    goto :goto_13

    .restart local v40    # "result":Z
    :cond_50
    # invokes: Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8300()Z

    move-result v2

    if-nez v2, :cond_51

    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6800()V

    goto/16 :goto_0

    :cond_51
    const/4 v2, 0x0

    goto :goto_14

    .end local v40    # "result":Z
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;

    .local v43, "ssacInfo":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    invoke-virtual/range {v43 .. v43}, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->getVoiceFactor()I

    move-result v46

    .local v46, "voiceFactor":I
    const/16 v2, 0x64

    move/from16 v0, v46

    if-ne v0, v2, :cond_52

    const-string v2, "[EPDGService]"

    const-string v4, "Voice factor is 100. Ignore it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_52
    if-nez v46, :cond_54

    const-string v2, "[EPDGService]"

    const-string v4, "Voice call is barred 100% using SSAC"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8400()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8500(Z)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7000(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8600(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    :cond_54
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8400()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8500(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8600(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v43    # "ssacInfo":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    .end local v46    # "voiceFactor":I
    :sswitch_2b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55

    const/16 v44, 0x1

    .local v44, "status":Z
    :goto_15
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EPDG_WFCPROFILE_READ as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v44

    # invokes: Lcom/sec/epdg/EpdgService;->changeApBlocking(Z)V
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$8700(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .end local v44    # "status":Z
    :cond_55
    const/16 v44, 0x0

    goto :goto_15

    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->initAfterimsReady()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8800(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->updateNetRegist()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8900(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_13
        0x1d -> :sswitch_11
        0x1e -> :sswitch_10
        0x1f -> :sswitch_b
        0x21 -> :sswitch_c
        0x22 -> :sswitch_f
        0x23 -> :sswitch_a
        0x25 -> :sswitch_d
        0x26 -> :sswitch_e
        0x29 -> :sswitch_7
        0x2a -> :sswitch_9
        0x2b -> :sswitch_8
        0x2c -> :sswitch_6
        0x2d -> :sswitch_0
        0x2e -> :sswitch_1
        0x2f -> :sswitch_1
        0x30 -> :sswitch_2
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_4
        0x34 -> :sswitch_12
        0x35 -> :sswitch_5
        0x36 -> :sswitch_21
        0x37 -> :sswitch_22
        0x38 -> :sswitch_14
        0x39 -> :sswitch_15
        0x3a -> :sswitch_17
        0x3b -> :sswitch_16
        0x3c -> :sswitch_18
        0x3d -> :sswitch_1b
        0x3e -> :sswitch_1d
        0x3f -> :sswitch_1f
        0x40 -> :sswitch_24
        0x41 -> :sswitch_19
        0x42 -> :sswitch_20
        0x43 -> :sswitch_23
        0x45 -> :sswitch_25
        0x46 -> :sswitch_27
        0x47 -> :sswitch_28
        0x48 -> :sswitch_1c
        0x49 -> :sswitch_29
        0x4a -> :sswitch_2a
        0x4b -> :sswitch_2b
        0x4c -> :sswitch_2c
        0x4d -> :sswitch_1a
        0x4e -> :sswitch_1e
        0x50 -> :sswitch_2d
        0x50000 -> :sswitch_26
    .end sparse-switch
.end method
