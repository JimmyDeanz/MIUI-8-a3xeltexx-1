.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;
.super Ljava/util/TimerTask;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateExpirationTimerForThisCredential(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

.field final synthetic val$new_credential_id:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V
    .locals 0

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput p2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->val$new_credential_id:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2076
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " expiration timer expired "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->val$new_credential_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2079
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 2080
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->val$new_credential_id:I

    if-ne v2, v3, :cond_0

    .line 2081
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2082
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2087
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->val$new_credential_id:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    .line 2088
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->val$new_credential_id:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    .line 2089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2090
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20Timer;->cred_id:I

    if-ltz v2, :cond_1

    .line 2091
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20Timer;->cred_id:I

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->val$new_credential_id:I

    if-ne v2, v3, :cond_1

    .line 2092
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 2089
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2096
    :cond_2
    return-void
.end method
