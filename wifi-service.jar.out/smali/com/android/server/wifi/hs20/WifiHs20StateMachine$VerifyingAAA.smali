.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingAAA"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 1755
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1756
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1758
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x4e23

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1760
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    :goto_0
    return-void

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1768
    const/4 v0, 0x0

    .line 1769
    .local v0, "bRetVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1797
    :goto_0
    return v0

    .line 1771
    :sswitch_0
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1773
    const/4 v0, 0x1

    .line 1774
    goto :goto_0

    .line 1776
    :sswitch_1
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1778
    const/4 v0, 0x1

    .line 1779
    goto :goto_0

    .line 1781
    :sswitch_2
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_ABORT_PROVISIONING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1783
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1784
    const/4 v0, 0x1

    .line 1785
    goto :goto_0

    .line 1787
    :sswitch_3
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_RELEASE_TLS_CONNECTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1789
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1790
    const/4 v0, 0x1

    .line 1791
    goto :goto_0

    .line 1793
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v2, 0x1b65

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 1794
    const/4 v0, 0x1

    goto :goto_0

    .line 1769
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b65 -> :sswitch_2
        0x1b66 -> :sswitch_3
        0x1b72 -> :sswitch_4
        0x1b75 -> :sswitch_0
        0x1b76 -> :sswitch_1
    .end sparse-switch
.end method
