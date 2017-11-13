.class Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ie":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SoftApStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! unhandled message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1602(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I

    const-string v0, "SoftApStateMachine"

    const-string v1, "CMD_START_AP_FAILURE because of wifi & supplicant got failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
