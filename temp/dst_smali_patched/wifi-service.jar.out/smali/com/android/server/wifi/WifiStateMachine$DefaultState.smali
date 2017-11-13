.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStateMachineStarted:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 52
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error! unhandled message"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "TRUE"

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .local v17, "args":Landroid/os/Bundle;
    if-eqz v17, :cond_3

    const-string v4, "feature"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "feature":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "confCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v21

    .local v21, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getForegroundPackageName()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v31

    .local v31, "fgPackageName":Ljava/lang/String;
    if-nez v31, :cond_2

    const-string v31, "x"

    :cond_2
    new-instance v45, Ljava/lang/StringBuffer;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuffer;-><init>()V

    .local v45, "sb":Ljava/lang/StringBuffer;
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v45

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v45

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v6, v10}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    goto/16 :goto_0

    .end local v6    # "feature":Ljava/lang/String;
    .end local v20    # "confCount":I
    .end local v21    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v31    # "fgPackageName":Ljava/lang/String;
    .end local v45    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "CMD_SEC_LOGGING_FOR_ONOF : args is null!"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v17    # "args":Landroid/os/Bundle;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "TRUE"

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .restart local v17    # "args":Landroid/os/Bundle;
    if-eqz v17, :cond_5

    const-string v4, "bigdata"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .local v38, "isBigDataLog":Z
    if-eqz v38, :cond_4

    const-string v4, "feature"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "feature":Ljava/lang/String;
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    goto/16 :goto_0

    .end local v6    # "feature":Ljava/lang/String;
    .end local v24    # "data":Ljava/lang/String;
    :cond_4
    const-string v4, "feature"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "feature":Ljava/lang/String;
    const-string v4, "extra"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "extra":Ljava/lang/String;
    const-string v4, "value"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v50

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .local v8, "value":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    goto/16 :goto_0

    .end local v6    # "feature":Ljava/lang/String;
    .end local v7    # "extra":Ljava/lang/String;
    .end local v8    # "value":J
    .end local v38    # "isBigDataLog":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "CMD_SEC_LOGGING : args is null!"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v17    # "args":Landroid/os/Bundle;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->analyzeKernelWifiWakelocks()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/util/AsyncChannel;

    .local v16, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_7

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x11001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiP2pService connection failure, error="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v16    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/util/AsyncChannel;

    .restart local v16    # "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v16    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, -0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, v0, v10, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, v0, v10, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_9

    const/4 v4, 0x1

    :goto_2
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    :sswitch_b
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x2

    const/4 v10, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x2

    const/4 v10, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v23

    .local v23, "countryCode":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_country_code"

    move-object/from16 v0, v23

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v47

    .local v47, "sequenceNum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x20050

    const/4 v10, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    invoke-static {v4, v5, v0, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;IIILjava/lang/Object;)V

    .end local v47    # "sequenceNum":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "WIFI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
    invoke-static {v4, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5502(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v4

    new-instance v5, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v10, "WIFI"

    invoke-virtual {v4, v5, v10}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->registerForImsRegistration()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x201ff

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .end local v23    # "countryCode":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_3
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5800(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_country_code"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_f
    const/16 v39, 0x0

    .local v39, "mBlacklistFilePath":Ljava/io/File;
    new-instance v39, Ljava/io/File;

    .end local v39    # "mBlacklistFilePath":Ljava/io/File;
    const-string v4, "/data/misc/wifi/blacklist.conf"

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v39    # "mBlacklistFilePath":Ljava/io/File;
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "Blacklist file delete"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->delete()Z

    :cond_e
    :try_start_0
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "chmod 660 /data/misc/wifi/blacklist.conf"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "chown system:wifi /data/misc/wifi/blacklist.conf"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v29

    .local v29, "e":Ljava/io/IOException;
    invoke-virtual/range {v29 .. v29}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v29    # "e":Ljava/io/IOException;
    .end local v39    # "mBlacklistFilePath":Ljava/io/File;
    :sswitch_10
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "HS20_OSU_FETCH_COMPLETE"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastOsuProviderFetchedCount:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5902(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendHs20ProviderUpdateBroadcast()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    :sswitch_11
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_REMEDIATION_REQUEST CRED_ID: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " URL: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " MethodType: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_10
    new-instance v43, Landroid/content/Intent;

    const-string v4, "android.net.wifi.HS20_REMEDIATION_REQUEST"

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v43, "remediationIntent":Landroid/content/Intent;
    const-string v4, "cred_id"

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "method_type"

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "url"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .end local v43    # "remediationIntent":Landroid/content/Intent;
    :sswitch_12
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_WNM_DEAUTH_IMMINENT URL: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_11
    new-instance v27, Landroid/content/Intent;

    const-string v4, "android.net.wifi.HS20_WNM_DEAUTH_IMMINENT"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v27, "deauthImminentIntent":Landroid/content/Intent;
    const-string v5, "url"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .end local v27    # "deauthImminentIntent":Landroid/content/Intent;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_CONFIGURATION_UPDATE, message.arg1 ="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateHS20AnqpInfoToaddToConfiguredNetwork(I)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .local v42, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_DISABLED_COMPLETE"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->isHs20Enabled:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncClearHs20()V

    const-string v4, "cred_error"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "HS20_DISABLED_COMPLETE the eason by cred+error"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    new-instance v35, Landroid/content/Intent;

    const-string v4, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v35, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v35    # "intent":Landroid/content/Intent;
    .end local v42    # "reason":Ljava/lang/String;
    :sswitch_15
    new-instance v35, Landroid/content/Intent;

    const-string v4, "android.net.wifi.hs20.TEST_TRIGGER_POLICY_UPDATE"

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v35    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v35    # "intent":Landroid/content/Intent;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .local v25, "dataString":Ljava/lang/String;
    const-string v4, " "

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .local v48, "tokens":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v48, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    .local v32, "friendlyName":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received HS20_START_OSU_STR: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    new-instance v35, Landroid/content/Intent;

    const-string v4, "android.net.wifi.hs20.TEST_START_OSU_PROCESS"

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v35    # "intent":Landroid/content/Intent;
    const-string v4, "friendly_name"

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v25    # "dataString":Ljava/lang/String;
    .end local v32    # "friendlyName":Ljava/lang/String;
    .end local v35    # "intent":Landroid/content/Intent;
    .end local v48    # "tokens":[Ljava/lang/String;
    :sswitch_17
    new-instance v26, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v26, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteTheContents()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v29

    .local v29, "e":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v26    # "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    .end local v29    # "e":Ljava/lang/Exception;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .restart local v25    # "dataString":Ljava/lang/String;
    const-string v4, " "

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .restart local v48    # "tokens":[Ljava/lang/String;
    new-instance v35, Landroid/content/Intent;

    const-string v4, "android.net.wifi.hs20.TEST_TRIGGER_INSTALL_FILE"

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v35    # "intent":Landroid/content/Intent;
    const-string v4, "filetype"

    const/4 v5, 0x1

    aget-object v5, v48, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "filename"

    const/4 v5, 0x2

    aget-object v5, v48, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "filepath"

    const/4 v5, 0x3

    aget-object v5, v48, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v25    # "dataString":Ljava/lang/String;
    .end local v35    # "intent":Landroid/content/Intent;
    .end local v48    # "tokens":[Ljava/lang/String;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .local v22, "country":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const/16 v41, 0x1

    .local v41, "persist":Z
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    .local v46, "sequence":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move/from16 v0, v46

    if-eq v0, v4, :cond_14

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "set country code ignored due to sequnce num"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v41    # "persist":Z
    .end local v46    # "sequence":I
    :cond_13
    const/16 v41, 0x0

    goto :goto_4

    .restart local v41    # "persist":Z
    .restart local v46    # "sequence":I
    :cond_14
    if-eqz v41, :cond_0

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set country code "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v22, :cond_17

    const-string v4, "(null)"

    :goto_5
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_country_code"

    if-nez v22, :cond_16

    const-string v22, ""

    .end local v22    # "country":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v22

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .restart local v22    # "country":Ljava/lang/String;
    :cond_17
    move-object/from16 v4, v22

    goto :goto_5

    .end local v22    # "country":Ljava/lang/String;
    .end local v41    # "persist":Z
    .end local v46    # "sequence":I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x4

    const/4 v10, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x4

    const/4 v10, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->enableAllNetworks()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v49, "wapi_string"

    .local v49, "wapiEventName":Ljava/lang/String;
    new-instance v35, Landroid/content/Intent;

    const-string v4, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v35    # "intent":Landroid/content/Intent;
    const/16 v4, 0x10

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v35    # "intent":Landroid/content/Intent;
    .end local v49    # "wapiEventName":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v49, "wapi_string"

    .restart local v49    # "wapiEventName":Ljava/lang/String;
    new-instance v35, Landroid/content/Intent;

    const-string v4, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v35    # "intent":Landroid/content/Intent;
    const/16 v4, 0x11

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v35    # "intent":Landroid/content/Intent;
    .end local v49    # "wapiEventName":Ljava/lang/String;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverErrorMessage:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6902(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25002

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25005

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7200()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25008

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2500c

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2500f

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25012

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25016

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/content/Intent;

    .restart local v35    # "intent":Landroid/content/Intent;
    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v35    # "intent":Landroid/content/Intent;
    :sswitch_2b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiStateMachine"

    const-string v5, "Not in WaitForUserSelectionState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    const/16 v19, 0x1

    .local v19, "calledFromApi":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move/from16 v0, v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updatePoorNetworkParameters(Z)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    .end local v19    # "calledFromApi":Z
    :cond_1a
    const/16 v19, 0x0

    goto :goto_6

    :sswitch_2d
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v30

    .local v30, "featureSet":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    move/from16 v1, v30

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v30    # "featureSet":I
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v18, v4

    check-cast v18, [B

    .local v18, "buffer":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/server/wifi/DummyWifiLogger;->captureAlertData(I[B)V

    goto/16 :goto_0

    .end local v18    # "buffer":[B
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    new-instance v10, Landroid/net/wifi/WifiLinkLayerStats;

    invoke-direct {v10}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/net/NetworkInfo;

    .local v34, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .end local v34    # "info":Landroid/net/NetworkInfo;
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_1b

    const/4 v4, 0x1

    :goto_7
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2300d

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    :cond_1b
    const/4 v4, 0x0

    goto :goto_7

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7900(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    :sswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v10

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v10, -0x14

    invoke-virtual {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    :sswitch_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v10, -0x14

    invoke-virtual {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    :sswitch_3d
    const-string v4, "WifiStateMachine"

    const-string v5, "DefaultState::Handling CMD_SEC_API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_3e
    const-string v4, "WifiStateMachine"

    const-string v5, "DefaultState::Handling CMD_SEC_STRING_API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->closeShareProfileServer()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startShareProfileServer()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    :sswitch_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->sharedChannel:[I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$8500(Lcom/android/server/wifi/WifiStateMachine;)[I

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->startPartialScan(I[I)I

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, -0x1

    const/4 v10, -0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v4, v5, v10, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_0

    :sswitch_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/16 v10, 0x3e8

    invoke-static {v5, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateConfiguredNetworkExpiration()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    :sswitch_43
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/os/Bundle;

    .local v40, "msgObj":Landroid/os/Bundle;
    const-string v4, "deviceAddress"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "deviceAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v28

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getIpAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "targetIP":Ljava/lang/String;
    const-string v4, "filePath"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "filePath":Ljava/lang/String;
    const-string v4, "senderName"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "senderName":Ljava/lang/String;
    const-string v4, "SSIDs"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "ssidsToSend":Ljava/lang/String;
    const-string v4, "disconnectOnCompletion"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .local v15, "disconnectOnCompletion":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .local v44, "retryCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientThreadOngoing:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-nez v4, :cond_1d

    if-eqz v12, :cond_1d

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER, Peer: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "), filePath: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", senderName: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", SSIDs: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", disconnectOnCompletion: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startShareProfileClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1d
    if-gtz v44, :cond_1e

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER failed. Peer: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "), filePath: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", senderName: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", SSIDs: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", disconnectOnCompletion: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    const v10, 0x2013e

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x1040847

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-static {v5, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2013f

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_1e
    if-eqz v12, :cond_1f

    if-lez v44, :cond_0

    :cond_1f
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER, Retry - targetIP: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mClientThreadOngoing: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientThreadOngoing:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", retryCount: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    const v10, 0x2013c

    add-int/lit8 v44, v44, -0x1

    const/16 v50, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    move/from16 v0, v44

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-static {v5, v10, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v50, 0x3e8

    move-wide/from16 v0, v50

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    const/16 v33, 0xa

    .local v33, "i":I
    :goto_8
    const/16 v4, 0x15

    move/from16 v0, v33

    if-ge v0, v4, :cond_22

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "192.168.49."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .local v36, "ip":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v37

    .local v37, "ipAddress":Ljava/net/InetAddress;
    const/4 v4, 0x5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v36    # "ip":Ljava/lang/String;
    .end local v37    # "ipAddress":Ljava/net/InetAddress;
    :cond_21
    :goto_9
    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    :catch_2
    move-exception v29

    .local v29, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER isReachable"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v29    # "e":Ljava/io/IOException;
    :cond_22
    const/16 v33, 0xc8

    :goto_a
    const/16 v4, 0xd3

    move/from16 v0, v33

    if-ge v0, v4, :cond_0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "192.168.49."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "ip":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v37

    .restart local v37    # "ipAddress":Ljava/net/InetAddress;
    const/4 v4, 0x5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v36    # "ip":Ljava/lang/String;
    .end local v37    # "ipAddress":Ljava/net/InetAddress;
    :cond_23
    :goto_b
    add-int/lit8 v33, v33, 0x1

    goto :goto_a

    :catch_3
    move-exception v29

    .restart local v29    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER isReachable"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "targetIP":Ljava/lang/String;
    .end local v13    # "senderName":Ljava/lang/String;
    .end local v14    # "ssidsToSend":Ljava/lang/String;
    .end local v15    # "disconnectOnCompletion":Z
    .end local v28    # "deviceAddress":Ljava/lang/String;
    .end local v29    # "e":Ljava/io/IOException;
    .end local v33    # "i":I
    .end local v40    # "msgObj":Landroid/os/Bundle;
    .end local v44    # "retryCount":I
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->closeShareProfileClient()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    :sswitch_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v5, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->finishShareProfileConnection()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    :sswitch_47
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "WifiStateMachine"

    const-string v5, "receive WifiMonitor.HANDOVER_EVENT "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    goto/16 :goto_0

    :sswitch_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x20272

    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "ignore P2P_FACTORY_RESET"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_3
        0x11004 -> :sswitch_4
        0x2000b -> :sswitch_1a
        0x2000c -> :sswitch_1a
        0x2000d -> :sswitch_1a
        0x2000e -> :sswitch_1a
        0x20011 -> :sswitch_1a
        0x20012 -> :sswitch_1a
        0x20013 -> :sswitch_1a
        0x20015 -> :sswitch_1a
        0x20016 -> :sswitch_1a
        0x20017 -> :sswitch_1a
        0x20018 -> :sswitch_1a
        0x20019 -> :sswitch_1a
        0x2001a -> :sswitch_1a
        0x2001b -> :sswitch_1a
        0x2001c -> :sswitch_1a
        0x2001d -> :sswitch_1a
        0x2001e -> :sswitch_1a
        0x2001f -> :sswitch_5
        0x20033 -> :sswitch_6
        0x20034 -> :sswitch_6
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_6
        0x20037 -> :sswitch_1a
        0x20038 -> :sswitch_1a
        0x20039 -> :sswitch_1a
        0x2003a -> :sswitch_6
        0x2003b -> :sswitch_8
        0x2003c -> :sswitch_7
        0x2003d -> :sswitch_2d
        0x2003e -> :sswitch_9
        0x2003f -> :sswitch_2f
        0x20047 -> :sswitch_19
        0x20048 -> :sswitch_1a
        0x20049 -> :sswitch_1a
        0x2004a -> :sswitch_1a
        0x2004b -> :sswitch_1a
        0x2004c -> :sswitch_35
        0x2004d -> :sswitch_b
        0x20050 -> :sswitch_1b
        0x20051 -> :sswitch_e
        0x20052 -> :sswitch_a
        0x20053 -> :sswitch_1a
        0x20056 -> :sswitch_1d
        0x20058 -> :sswitch_1a
        0x20059 -> :sswitch_1a
        0x2005a -> :sswitch_1a
        0x2005d -> :sswitch_1a
        0x2005e -> :sswitch_1a
        0x2005f -> :sswitch_d
        0x20060 -> :sswitch_1a
        0x20061 -> :sswitch_36
        0x20062 -> :sswitch_1a
        0x20063 -> :sswitch_33
        0x20064 -> :sswitch_2e
        0x2006d -> :sswitch_1a
        0x2006e -> :sswitch_1a
        0x2007e -> :sswitch_1a
        0x20085 -> :sswitch_1a
        0x20086 -> :sswitch_c
        0x2008a -> :sswitch_34
        0x2008b -> :sswitch_34
        0x2008c -> :sswitch_32
        0x2008d -> :sswitch_1a
        0x2008e -> :sswitch_1a
        0x2008f -> :sswitch_1a
        0x20090 -> :sswitch_1a
        0x20091 -> :sswitch_1a
        0x20092 -> :sswitch_1a
        0x20093 -> :sswitch_1a
        0x20095 -> :sswitch_34
        0x20098 -> :sswitch_37
        0x2009a -> :sswitch_1a
        0x2009b -> :sswitch_1a
        0x2009e -> :sswitch_1a
        0x2009f -> :sswitch_1a
        0x200a0 -> :sswitch_38
        0x200a1 -> :sswitch_39
        0x200a2 -> :sswitch_3a
        0x200a3 -> :sswitch_3b
        0x200ca -> :sswitch_1
        0x200cb -> :sswitch_1a
        0x200cc -> :sswitch_1a
        0x200ce -> :sswitch_22
        0x200cf -> :sswitch_24
        0x200d0 -> :sswitch_1a
        0x200d1 -> :sswitch_1a
        0x200d2 -> :sswitch_2
        0x200d3 -> :sswitch_0
        0x2012c -> :sswitch_3c
        0x2012d -> :sswitch_3d
        0x2012e -> :sswitch_3e
        0x20130 -> :sswitch_2a
        0x20134 -> :sswitch_1a
        0x20135 -> :sswitch_1a
        0x20136 -> :sswitch_2b
        0x20137 -> :sswitch_2c
        0x20138 -> :sswitch_3f
        0x20139 -> :sswitch_41
        0x2013a -> :sswitch_42
        0x2013b -> :sswitch_40
        0x2013c -> :sswitch_43
        0x2013d -> :sswitch_44
        0x2013e -> :sswitch_45
        0x2013f -> :sswitch_46
        0x20140 -> :sswitch_1a
        0x201ff -> :sswitch_f
        0x2025e -> :sswitch_1a
        0x20272 -> :sswitch_48
        0x21013 -> :sswitch_1a
        0x21014 -> :sswitch_1a
        0x21015 -> :sswitch_1a
        0x21016 -> :sswitch_1a
        0x21017 -> :sswitch_1a
        0x21019 -> :sswitch_1a
        0x2300b -> :sswitch_30
        0x2300c -> :sswitch_31
        0x24001 -> :sswitch_1a
        0x24002 -> :sswitch_1a
        0x24003 -> :sswitch_1a
        0x24004 -> :sswitch_1a
        0x24005 -> :sswitch_1a
        0x24006 -> :sswitch_1a
        0x24007 -> :sswitch_1a
        0x2400a -> :sswitch_1a
        0x2400c -> :sswitch_20
        0x2400f -> :sswitch_1a
        0x24010 -> :sswitch_1a
        0x24011 -> :sswitch_1a
        0x2402b -> :sswitch_1a
        0x2404c -> :sswitch_10
        0x2404d -> :sswitch_13
        0x2404e -> :sswitch_14
        0x2404f -> :sswitch_11
        0x24051 -> :sswitch_12
        0x24053 -> :sswitch_18
        0x24054 -> :sswitch_16
        0x24055 -> :sswitch_15
        0x24056 -> :sswitch_17
        0x2405a -> :sswitch_1e
        0x2405b -> :sswitch_1f
        0x2408d -> :sswitch_47
        0x25001 -> :sswitch_21
        0x25004 -> :sswitch_23
        0x25007 -> :sswitch_25
        0x2500a -> :sswitch_26
        0x2500e -> :sswitch_27
        0x25011 -> :sswitch_28
        0x25014 -> :sswitch_29
        0x30004 -> :sswitch_1a
        0x30005 -> :sswitch_1a
        0x30006 -> :sswitch_1c
    .end sparse-switch
.end method
