.class Landroid/telephony/PhoneStateListener$2;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 5
    .param p1, "cfi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    return-void

    :cond_0
    move v0, v1

    .line 557
    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 568
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 617
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x400

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 589
    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 562
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 563
    .local v0, "location":Landroid/telephony/CellLocation;
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 576
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 577
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 605
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 571
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 573
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 5
    .param p1, "mwi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 554
    return-void

    :cond_0
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method public onOemHookRawEvent([B)V
    .locals 3
    .param p1, "rawData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x8000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 613
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3
    .param p1, "otaspMode"    # I

    .prologue
    .line 584
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 585
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 3
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x800

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 593
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 3
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 545
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 4
    .param p1, "asu"    # I

    .prologue
    .line 548
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 549
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v2, 0x0

    .line 580
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 3
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 609
    return-void
.end method
