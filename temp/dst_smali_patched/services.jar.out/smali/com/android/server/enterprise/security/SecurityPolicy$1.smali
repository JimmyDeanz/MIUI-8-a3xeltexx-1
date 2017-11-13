.class Lcom/android/server/enterprise/security/SecurityPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "userId":I
    :try_start_0
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$002(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SecurityPolicy"

    const-string v4, "Saving Device safe mode to true in generic table"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$200(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$300(Lcom/android/server/enterprise/security/SecurityPolicy;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SecurityPolicy"

    const-string v4, "Sending broadcast: edm.intent.action.LAST_BOOT_SAFE_MODE"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "edm.intent.action.LAST_BOOT_SAFE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$200(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
