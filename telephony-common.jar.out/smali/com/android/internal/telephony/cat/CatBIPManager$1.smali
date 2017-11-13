.class Lcom/android/internal/telephony/cat/CatBIPManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 196
    const-string v2, "VZW-CDMA"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const-string v2, "apnFailed"

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "bip"

    const-string v3, "apnType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DISCONNECTED"

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 202
    const-string v2, "ACL fail so send TR"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # invokes: Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForApnFailedOpenchannel()V
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v2, ">>>>>>>>>> BROADCAST EVENT FROM CAT BIP MANAGER <<<<<<<<<<"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->isListening()Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent receiver called with not listening : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_2
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 218
    .local v1, "nwInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_3

    .line 219
    const-string v2, "there is no network info"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v3, "enableBIP"

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v3, "enableHIPRI"

    if-ne v2, v3, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    .line 225
    :cond_5
    const-string v2, "It is not BIP type"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_6
    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 232
    .local v0, "noConnectivity":Z
    if-eqz v0, :cond_7

    .line 233
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    .line 238
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    const-string v2, "otherNetwork"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setOtherNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setReason(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    const-string v3, "isFailover"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setFailover(Z)V

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(): mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOtherNetworkInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getOtherNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "[none]"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    goto/16 :goto_0

    .line 235
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    goto/16 :goto_1

    .line 247
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getOtherNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " noConn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
