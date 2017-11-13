.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;
.super Landroid/os/Handler;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v6, "UcmService"

    const-string v7, "MSG_REFRESH_APPLET_INFO is called..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :pswitch_2
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v7, 0x0

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V
    invoke-static {v6, v9, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "data":Landroid/os/Bundle;
    const-string v6, "packageName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "packageName":Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "status":Ljava/lang/String;
    const-string v6, "errorCode"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "errorCode":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_PACKAGE_LICENSE_UPDATE packageName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",status-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", errorCode-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    const-string v6, "success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    const-string v6, "event"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_1
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7, v4}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v3

    .local v3, "notifyStatus":Z
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  notifyLicenseStatus Activate status- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "notifyStatus":Z
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V
    invoke-static {v6, v9, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "event"

    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_2
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7, v4}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v3

    .restart local v3    # "notifyStatus":Z
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  notifyLicenseStatus expire status- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v3    # "notifyStatus":Z
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
