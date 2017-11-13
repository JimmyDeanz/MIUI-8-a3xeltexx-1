.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "action":Ljava/lang/String;
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "userId":I
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v6, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .local v2, "managedProfileUserHandle":Landroid/os/UserHandle;
    if-nez v2, :cond_2

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "managedProfileUserHandle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "managedProfileUserHandle":Landroid/os/UserHandle;
    :cond_1
    :goto_0
    return-void

    .restart local v2    # "managedProfileUserHandle":Landroid/os/UserHandle;
    :cond_2
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .local v3, "managedProfileUserId":I
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_3

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "managedProfileUserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lt v3, v10, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V
    invoke-static {v6, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V
    invoke-static {v6, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto :goto_0

    .end local v2    # "managedProfileUserHandle":Landroid/os/UserHandle;
    .end local v3    # "managedProfileUserId":I
    :cond_5
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-lt v5, v10, :cond_6

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->unregisterPersonaObserver(I)V
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v7, -0x1

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z
    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    goto :goto_0

    :cond_7
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :cond_8
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :cond_9
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto/16 :goto_0

    :cond_a
    const-string v6, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .local v4, "userHandle":Landroid/os/UserHandle;
    if-nez v4, :cond_b

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onReceive ACTION_DEVICE_OWNER_CHANGED userHandle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .local v0, "DOUserId":I
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V
    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto/16 :goto_0
.end method
