.class Lcom/samsung/cpp/CPPProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "CPPProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPProvider;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPProvider;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 293
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "External Intent Received "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 296
    const-string v19, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 299
    .local v5, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 300
    .local v6, "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 301
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    .line 302
    .local v18, "wifiConnected":Z
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    if-nez v19, :cond_6

    const/4 v9, 0x1

    .line 308
    .local v9, "mobileConnected":Z
    :goto_1
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CONNECTIVITY_ACTION = { WIFI : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Mobile Data : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " }"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v18, :cond_8

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$000()Z

    move-result v19

    if-nez v19, :cond_8

    .line 312
    const-string v19, "CPProvider"

    const-string v20, "CONNECTIVITY_ACTION : WIFI ON"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CONNECTIVITY_ACTION : flagEnableCLM = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$100(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mNeedUpdatePolicy = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCurrentPolicyFileExists = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v19, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$002(Z)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$100(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 317
    const-string v19, "CPProvider"

    const-string v20, "WIFI connected + flag_enableCPP --> sendRequest directly"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->sendLargeRequest()V

    .line 321
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v19

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 322
    :cond_1
    const-string v19, "CPProvider"

    const-string v20, "sendMessage(MSG_UPDATE_POLICY)/BroadcastReceiver.CONNECTIVITY_ACTION(wifi)"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 325
    .local v11, "reqMsg":Landroid/os/Message;
    const/16 v19, 0x7

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->what:I

    .line 326
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .end local v11    # "reqMsg":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v9, :cond_9

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$500()Z

    move-result v19

    if-nez v19, :cond_9

    .line 337
    const-string v19, "CPProvider"

    const-string v20, "CONNECTIVITY_ACTION : Mobile Data ON"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CONNECTIVITY_ACTION : mNeedUpdatePolicy = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCurrentPolicyFileExists = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v19, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$502(Z)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v19

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 342
    :cond_3
    const-string v19, "CPProvider"

    const-string v20, "sendMessage(MSG_UPDATE_POLICY)/BroadcastReceiver.CONNECTIVITY_ACTION(mobile)"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 345
    .local v12, "reqMsg1":Landroid/os/Message;
    const/16 v19, 0x7

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->what:I

    .line 346
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    .end local v5    # "conMan":Landroid/net/ConnectivityManager;
    .end local v6    # "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "mobileConnected":Z
    .end local v12    # "reqMsg1":Landroid/os/Message;
    .end local v18    # "wifiConnected":Z
    :cond_4
    :goto_3
    return-void

    .line 301
    .restart local v5    # "conMan":Landroid/net/ConnectivityManager;
    .restart local v6    # "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 302
    .restart local v18    # "wifiConnected":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 305
    .end local v18    # "wifiConnected":Z
    :cond_7
    const/16 v18, 0x0

    .line 306
    .restart local v18    # "wifiConnected":Z
    const/4 v9, 0x0

    .restart local v9    # "mobileConnected":Z
    goto/16 :goto_1

    .line 330
    :cond_8
    if-nez v18, :cond_2

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$000()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 331
    const-string v19, "CPProvider"

    const-string v20, "CONNECTIVITY_ACTION : WIFI OFF"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v19, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$002(Z)Z

    goto/16 :goto_2

    .line 350
    :cond_9
    if-nez v9, :cond_4

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$500()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 351
    const-string v19, "CPProvider"

    const-string v20, "CONNECTIVITY_ACTION : Mobile Data OFF"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v19, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$502(Z)Z

    goto :goto_3

    .line 355
    .end local v5    # "conMan":Landroid/net/ConnectivityManager;
    .end local v6    # "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "mobileConnected":Z
    .end local v18    # "wifiConnected":Z
    :cond_a
    const-string v19, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 356
    const-string v19, "CPProvider"

    const-string v20, "received : android.intent.action.ACTION_SHUTDOWN"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 358
    .local v14, "stopMsg":Landroid/os/Message;
    const/16 v19, 0x4

    move/from16 v0, v19

    iput v0, v14, Landroid/os/Message;->what:I

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 360
    .end local v14    # "stopMsg":Landroid/os/Message;
    :cond_b
    const-string v19, "android.intent.action.ACTION_CLM_TT_START_BY_APP"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 361
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "INTENT_CLM_TT_START_BY_APP : flagEnableCPP = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$602(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 366
    :cond_c
    const-string v19, "CPProvider"

    const-string v20, "INTENT_CLM_TT_START_BY_APP : CP Positioning Service is already enabled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 368
    :cond_d
    const-string v19, "android.intent.action.ACTION_CLM_TT_STOP_BY_APP"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 369
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "INTENT_CLM_TT_STOP_BY_APP : flagEnableCPP = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$602(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 374
    :cond_e
    const-string v19, "CPProvider"

    const-string v20, "INTENT_CLM_TT_STOP_BY_APP : CP Positioning Service is already disabled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 376
    :cond_f
    const-string v19, "sec.intent.action.UPDATE_POLICY"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/cpp/CPPPolicyHandler;->isPolicyExpiration()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 378
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 379
    .restart local v11    # "reqMsg":Landroid/os/Message;
    const/16 v19, 0x7

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->what:I

    .line 380
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .end local v11    # "reqMsg":Landroid/os/Message;
    :cond_10
    const-string v19, "CPProvider"

    const-string v20, "Update required by sec.intent.action.UPDATE_POLICY"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 384
    :cond_11
    const-string v19, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 385
    const-string v19, "CPProvider"

    const-string v20, "Boot Completed, Clean Cell DB Req Table"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/cpp/CPPDbAdapter;->deleteAllReq()V

    goto/16 :goto_3

    .line 387
    :cond_12
    const-string v19, "android.net.wifi.STATE_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 389
    const-string v19, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$800(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->wifi:Landroid/net/wifi/WifiManager;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1000(Lcom/samsung/cpp/CPPProvider;)Landroid/net/wifi/WifiManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v20

    # setter for: Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;
    invoke-static/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$902(Lcom/samsung/cpp/CPPProvider;Ljava/util/List;)Ljava/util/List;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z
    invoke-static/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$802(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$900(Lcom/samsung/cpp/CPPProvider;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 394
    .local v13, "result":Landroid/net/wifi/ScanResult;
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SSID : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", BSSID : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", RSSI : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 397
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "result":Landroid/net/wifi/ScanResult;
    :cond_13
    const-string v19, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyVersion()Ljava/lang/String;

    move-result-object v17

    .line 400
    .local v17, "version":Ljava/lang/String;
    if-eqz v17, :cond_4

    const-string v19, "19700102-00:00"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 401
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyyMMdd-HH:mm"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 402
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 403
    .local v10, "nowDate":Ljava/util/Date;
    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "checkedVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyVersion(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 406
    .end local v4    # "checkedVersion":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v10    # "nowDate":Ljava/util/Date;
    .end local v17    # "version":Ljava/lang/String;
    :cond_14
    const-string v19, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 407
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "INTENT_ACTION_SUBINFO_RECORD_UPDATED : mNeedUpdatePolicy = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCurrentPolicyFileExists = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v19

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v19, v0

    if-nez v19, :cond_17

    .line 410
    :cond_15
    const-string v19, "CPProvider"

    const-string v20, "sendMessageDelayed(MSG_UPDATE_POLICY)/INTENT_ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 413
    .restart local v12    # "reqMsg1":Landroid/os/Message;
    const/16 v19, 0x7

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->what:I

    .line 414
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v19

    const-wide/16 v20, 0xbb8

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 421
    .end local v12    # "reqMsg1":Landroid/os/Message;
    :goto_5
    const-string v19, "CPProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SIM Slot Count : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mSimSlotCount:I
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$1100(Lcom/samsung/cpp/CPPProvider;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mSimSlotCount:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$1100(Lcom/samsung/cpp/CPPProvider;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1a

    .line 424
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v15

    .line 425
    .local v15, "subId":[I
    if-eqz v15, :cond_18

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/cpp/CPPProvider$1$1;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/cpp/CPPProvider$1$1;-><init>(Lcom/samsung/cpp/CPPProvider$1;I)V

    # setter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1202(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 436
    :goto_6
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v15

    .line 438
    if-eqz v15, :cond_19

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/cpp/CPPProvider$1$2;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/cpp/CPPProvider$1$2;-><init>(Lcom/samsung/cpp/CPPProvider$1;I)V

    # setter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1302(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 460
    .end local v15    # "subId":[I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 462
    .local v16, "teleMan":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$1200(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v19

    if-eqz v19, :cond_16

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$1200(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 465
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$1300(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$1300(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_3

    .line 419
    .end local v16    # "teleMan":Landroid/telephony/TelephonyManager;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v19 .. v19}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/cpp/CPPPolicyHandler;->notifyPolicyUpdate()V

    goto/16 :goto_5

    .line 434
    .restart local v15    # "subId":[I
    :cond_18
    const-string v19, "CPProvider"

    const-string v20, "SIM 1 error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 447
    :cond_19
    const-string v19, "CPProvider"

    const-string v20, "SIM 2 error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 450
    .end local v15    # "subId":[I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/cpp/CPPProvider$1$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/cpp/CPPProvider$1$3;-><init>(Lcom/samsung/cpp/CPPProvider$1;)V

    # setter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v19 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1202(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    goto/16 :goto_7
.end method
