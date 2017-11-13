.class Lcom/samsung/android/server/wifi/SoftApStateMachine$5;
.super Ljava/lang/Object;
.source "SoftApStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    :try_start_0
    const-string v2, "SoftApStateMachine"

    const-string v3, "runnable startSoftApWithConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v3, "Soft AP start successful"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v3, 0x20016

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap re-start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v3, 0x20017

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_1
.end method
