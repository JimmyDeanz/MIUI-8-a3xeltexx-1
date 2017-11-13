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
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

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

    const-string v1, "com.samsung.action.HOTSPOT_EXEC_COMMAND"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$102(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$100(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "command"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

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

    const/4 v12, 0x0

    .local v12, "nCmd":I
    const-string v1, "LaunchBrowsertoURI"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v12, 0x0

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .local v11, "msg":Landroid/os/Message;
    const/16 v1, 0x1b5f

    iput v1, v11, Landroid/os/Message;->what:I

    iput v12, v11, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "nCmd":I
    .end local v17    # "strCommand":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .restart local v12    # "nCmd":I
    .restart local v17    # "strCommand":Ljava/lang/String;
    :cond_2
    const-string v1, "getCertificate"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "negotiateClientCertTLS"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v12, 0x2

    goto :goto_0

    .end local v12    # "nCmd":I
    .end local v17    # "strCommand":Ljava/lang/String;
    :cond_4
    const-string v1, "com.samsung.action.HOTSPOT_START_SESSION"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.action.HOTSPOT_END_SESSION"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "status"

    const/16 v2, 0xc8

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

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

    const/16 v1, 0xc8

    move/from16 v0, v16

    if-ne v0, v1, :cond_9

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

    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v10, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$500(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredDetails(Lcom/android/server/wifi/hs20/WifiHs20CredDetails;)Z

    .end local v10    # "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$300(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b62

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v11    # "msg":Landroid/os/Message;
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b66

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->RELEASE_TLS:I

    iput v1, v11, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v11    # "msg":Landroid/os/Message;
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b66

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->RELEASE_TLS:I

    iput v1, v11, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v11    # "msg":Landroid/os/Message;
    :cond_9
    const/16 v1, 0x19f

    move/from16 v0, v16

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$900()I

    move-result v2

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$702(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;I)I

    :cond_a
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b74

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    iput v1, v11, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$702(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;I)I

    goto :goto_2

    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b65

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v11    # "msg":Landroid/os/Message;
    .end local v16    # "status":I
    :cond_d
    const-string v1, "com.samsung.action.HOTSPOT_UPDATE_MO"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b61

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v11    # "msg":Landroid/os/Message;
    :cond_e
    const-string v1, "com.samsung.action.HOTSPOT_ADD_MO"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b61

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v11    # "msg":Landroid/os/Message;
    :cond_f
    const-string v1, "com.samsung.action.REDIRECT_STATUS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "status"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    if-ne v9, v1, :cond_10

    new-instance v15, Landroid/content/Intent;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, "sendintent":Landroid/content/Intent;
    const-string v1, "Status"

    const-string v2, "OK"

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Error Code"

    const-string v2, ""

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v15    # "sendintent":Landroid/content/Intent;
    :cond_10
    new-instance v15, Landroid/content/Intent;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v15    # "sendintent":Landroid/content/Intent;
    const-string v1, "Status"

    const-string v2, "Error occurred"

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Error Code"

    const-string v2, ""

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v15    # "sendintent":Landroid/content/Intent;
    :cond_11
    const/4 v1, 0x1

    if-ne v9, v1, :cond_12

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b5e

    iput v1, v11, Landroid/os/Message;->what:I

    const/4 v13, 0x0

    .local v13, "nStatus":I
    iput v13, v11, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v11    # "msg":Landroid/os/Message;
    .end local v13    # "nStatus":I
    :cond_12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b65

    iput v1, v11, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v9    # "bStatus":Z
    .end local v11    # "msg":Landroid/os/Message;
    :cond_13
    const-string v1, "com.SAMSUNG.ACTION_ENROLLMENT_STATUS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "status"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I

    move-result v1

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_14

    new-instance v14, Landroid/content/Intent;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v14, "newintent":Landroid/content/Intent;
    const-string v1, "Status"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrSppStatus:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$1400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Error Code"

    const-string v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v14    # "newintent":Landroid/content/Intent;
    :cond_14
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v1, 0x1b5e

    iput v1, v11, Landroid/os/Message;->what:I

    const/4 v13, 0x0

    .restart local v13    # "nStatus":I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_15

    const/4 v13, 0x0

    :goto_3
    iput v13, v11, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v11, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_15
    const/4 v13, 0x1

    goto :goto_3
.end method
