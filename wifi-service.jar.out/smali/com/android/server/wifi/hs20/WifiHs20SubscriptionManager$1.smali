.class Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiHs20SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private INVALID_CERT_ID:I

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->INVALID_CERT_ID:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "action":Ljava/lang/String;
    const-string v1, "HS20SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "com.samsung.action.HOTSPOT_EXEC_COMMAND"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$102(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$100(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "command"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 225
    .local v17, "strCommand":Ljava/lang/String;
    const-string v1, "HS20SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v12, 0x0

    .line 227
    .local v12, "nCmd":I
    const-string v1, "LaunchBrowsertoURI"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 228
    const/4 v12, 0x0

    .line 234
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 235
    .local v11, "msg":Landroid/os/Message;
    const/16 v1, 0x1b5f

    iput v1, v11, Landroid/os/Message;->what:I

    .line 236
    iput v12, v11, Landroid/os/Message;->arg1:I

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 343
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "nCmd":I
    .end local v17    # "strCommand":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 229
    .restart local v12    # "nCmd":I
    .restart local v17    # "strCommand":Ljava/lang/String;
    :cond_2
    const-string v1, "getCertificate"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 230
    const/4 v12, 0x1

    goto :goto_0

    .line 231
    :cond_3
    const-string v1, "negotiateClientCertTLS"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const/4 v12, 0x2

    goto :goto_0

    .line 238
    .end local v12    # "nCmd":I
    .end local v17    # "strCommand":Ljava/lang/String;
    :cond_4
    const-string v1, "com.samsung.action.HOTSPOT_START_SESSION"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    const-string v1, "com.samsung.action.HOTSPOT_END_SESSION"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 240
    const-string v1, "status"

    const/16 v2, 0xc8

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 241
    .local v16, "status":I
    const-string v1, "HS20SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Remediation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$300(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCredType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v1, 0xc8

    move/from16 v0, v16

    if-ne v0, v1, :cond_9

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$300(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 246
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$500(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$500(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->INVALID_CERT_ID:I

    if-eq v1, v2, :cond_6

    .line 248
    const-string v1, "HS20SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCertId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCertId:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$600(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 250
    .local v10, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$500(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredDetails(Lcom/android/server/wifi/hs20/WifiHs20CredDetails;)Z

    .line 252
    .end local v10    # "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$300(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    if-nez v1, :cond_7

    .line 253
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 254
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b62

    iput v1, v11, Landroid/os/Message;->what:I

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 257
    .end local v11    # "msg":Landroid/os/Message;
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 258
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b66

    iput v1, v11, Landroid/os/Message;->what:I

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->RELEASE_TLS:I

    iput v1, v11, Landroid/os/Message;->arg1:I

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 263
    .end local v11    # "msg":Landroid/os/Message;
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 264
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b66

    iput v1, v11, Landroid/os/Message;->what:I

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->RELEASE_TLS:I

    iput v1, v11, Landroid/os/Message;->arg1:I

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 268
    .end local v11    # "msg":Landroid/os/Message;
    :cond_9
    const/16 v1, 0x19f

    move/from16 v0, v16

    if-ne v0, v1, :cond_c

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$900()I

    move-result v2

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$702(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;I)I

    .line 274
    :cond_a
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 275
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b74

    iput v1, v11, Landroid/os/Message;->what:I

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    iput v1, v11, Landroid/os/Message;->arg1:I

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrServerUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$300(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrReason:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredId:I
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->establishTLS(Ljava/lang/String;IIILjava/lang/String;I)Z

    goto/16 :goto_1

    .line 271
    .end local v11    # "msg":Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$900()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$702(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;I)I

    goto :goto_2

    .line 281
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 282
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b65

    iput v1, v11, Landroid/os/Message;->what:I

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 285
    .end local v11    # "msg":Landroid/os/Message;
    .end local v16    # "status":I
    :cond_d
    const-string v1, "com.samsung.action.HOTSPOT_UPDATE_MO"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 286
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 287
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b61

    iput v1, v11, Landroid/os/Message;->what:I

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 289
    .end local v11    # "msg":Landroid/os/Message;
    :cond_e
    const-string v1, "com.samsung.action.HOTSPOT_ADD_MO"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 290
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 291
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b61

    iput v1, v11, Landroid/os/Message;->what:I

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 293
    .end local v11    # "msg":Landroid/os/Message;
    :cond_f
    const-string v1, "com.samsung.action.REDIRECT_STATUS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 294
    const-string v1, "status"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 295
    .local v9, "bStatus":Z
    const-string v1, "HS20SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 297
    const/4 v1, 0x1

    if-ne v9, v1, :cond_10

    .line 298
    new-instance v15, Landroid/content/Intent;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v15, "sendintent":Landroid/content/Intent;
    const-string v1, "Status"

    const-string v2, "OK"

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "Error Code"

    const-string v2, ""

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 303
    .end local v15    # "sendintent":Landroid/content/Intent;
    :cond_10
    new-instance v15, Landroid/content/Intent;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v15    # "sendintent":Landroid/content/Intent;
    const-string v1, "Status"

    const-string v2, "Error occurred"

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "Error Code"

    const-string v2, ""

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 309
    .end local v15    # "sendintent":Landroid/content/Intent;
    :cond_11
    const/4 v1, 0x1

    if-ne v9, v1, :cond_12

    .line 310
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 311
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b5e

    iput v1, v11, Landroid/os/Message;->what:I

    .line 312
    const/4 v13, 0x0

    .line 313
    .local v13, "nStatus":I
    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 316
    .end local v11    # "msg":Landroid/os/Message;
    .end local v13    # "nStatus":I
    :cond_12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 317
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b65

    iput v1, v11, Landroid/os/Message;->what:I

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 321
    .end local v9    # "bStatus":Z
    .end local v11    # "msg":Landroid/os/Message;
    :cond_13
    const-string v1, "com.SAMSUNG.ACTION_ENROLLMENT_STATUS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    const-string v1, "status"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 323
    .restart local v9    # "bStatus":Z
    const-string v1, "HS20SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 325
    new-instance v14, Landroid/content/Intent;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v14, "newintent":Landroid/content/Intent;
    const-string v1, "Status"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrSppStatus:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "Error Code"

    const-string v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 330
    .end local v14    # "newintent":Landroid/content/Intent;
    :cond_14
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 331
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b5e

    iput v1, v11, Landroid/os/Message;->what:I

    .line 332
    const/4 v13, 0x0

    .line 333
    .restart local v13    # "nStatus":I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_15

    .line 334
    const/4 v13, 0x0

    .line 338
    :goto_3
    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 339
    const/4 v1, 0x0

    iput v1, v11, Landroid/os/Message;->arg2:I

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 336
    :cond_15
    const/4 v13, 0x1

    goto :goto_3
.end method
