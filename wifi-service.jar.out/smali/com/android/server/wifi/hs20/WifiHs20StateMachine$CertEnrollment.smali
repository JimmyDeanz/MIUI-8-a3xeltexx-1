.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CertEnrollment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1616
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1617
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->executeCommand(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$7000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V

    .line 1619
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, "bRetVal":Z
    const/4 v1, 0x0

    .line 1625
    .local v1, "requestReason":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1671
    :goto_0
    return v0

    .line 1627
    :sswitch_0
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1629
    const/4 v0, 0x1

    .line 1630
    goto :goto_0

    .line 1632
    :sswitch_1
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1634
    const/4 v0, 0x1

    .line 1635
    goto :goto_0

    .line 1637
    :sswitch_2
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_ABORT_PROVISIONING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v4, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1639
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1640
    const/4 v0, 0x1

    .line 1641
    goto :goto_0

    .line 1643
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1644
    const/4 v0, 0x1

    .line 1645
    goto :goto_0

    .line 1647
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 1648
    const-string v1, "Certificate enrollment completed"

    .line 1651
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v3, 0x1b5e

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;IIILjava/lang/String;)V

    .line 1653
    const/4 v0, 0x1

    .line 1654
    goto :goto_0

    .line 1649
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_0

    .line 1650
    const-string v1, "Certificate enrollment failed"

    goto :goto_1

    .line 1656
    :sswitch_5
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    .line 1657
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1659
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1660
    const/4 v0, 0x1

    .line 1661
    goto :goto_0

    .line 1667
    :sswitch_6
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v3, 0x1b65

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 1668
    const/4 v0, 0x1

    goto :goto_0

    .line 1625
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_4
        0x1b5f -> :sswitch_5
        0x1b61 -> :sswitch_3
        0x1b65 -> :sswitch_2
        0x1b72 -> :sswitch_6
        0x1b75 -> :sswitch_0
        0x1b76 -> :sswitch_1
    .end sparse-switch

    .line 1657
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
