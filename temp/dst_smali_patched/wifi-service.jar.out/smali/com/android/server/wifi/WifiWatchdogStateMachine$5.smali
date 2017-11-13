.class Lcom/android/server/wifi/WifiWatchdogStateMachine$5;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    const/4 v4, 0x1

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(): action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "registrationinfo"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    .local v0, "registrationinfo":Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIMSListener Registration: featureMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getFeatureMask()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", EPDG Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getEPDGStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getFeatureMask()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getEPDGStatus()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistered:Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0

    .end local v0    # "registrationinfo":Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistered:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
