.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/16 v1, -0x27

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state is unknown (state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    const/16 v1, -0x28

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$700(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CALL_STATE_RINGING"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$700(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "CALL_STATE_OFFHOOK"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$700(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$800(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .local v0, "cellLocation":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->isCellLocationChanged(Landroid/telephony/CellLocation;)Z
    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$900(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;
    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$1002(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCellInfoToSensorHub()V
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$1100(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V

    :cond_0
    return-void
.end method
