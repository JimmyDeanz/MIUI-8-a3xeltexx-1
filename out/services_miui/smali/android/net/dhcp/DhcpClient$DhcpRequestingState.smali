.class Landroid/net/dhcp/DhcpClient$DhcpRequestingState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRequestingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1

    .prologue
    .line 767
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 768
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 769
    const/16 v0, 0x4650

    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->mTimeout:I

    .line 770
    return-void
.end method


# virtual methods
.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 4
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    const/4 v3, 0x0

    .line 781
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    instance-of v1, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v1, :cond_2

    .line 783
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 784
    .local v0, "results":Landroid/net/DhcpResults;
    if-eqz v0, :cond_0

    .line 785
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # setter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1, v0}, Landroid/net/dhcp/DhcpClient;->access$3002(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 786
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # setter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v1, v3}, Landroid/net/dhcp/DhcpClient;->access$2602(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 787
    const-string v1, "DhcpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirmed lease: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 789
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$3100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$3200(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 791
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_2
    instance-of v1, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v1, :cond_0

    .line 792
    const-string v1, "DhcpClient"

    const-string v2, "Received NAK, returning to INIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # setter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v1, v3}, Landroid/net/dhcp/DhcpClient;->access$2602(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 794
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$3300(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    .prologue
    .line 773
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    # invokes: Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    invoke-static {v2, v3, v0, v1, v4}, Landroid/net/dhcp/DhcpClient;->access$2900(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method protected timeout()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$3400(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 802
    return-void
.end method
