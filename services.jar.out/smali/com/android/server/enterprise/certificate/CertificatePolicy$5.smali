.class Lcom/android/server/enterprise/certificate/CertificatePolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1356
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1357
    .local v1, "userId":I
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1358
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserSwitched(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 1372
    .end local v1    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 1359
    .restart local v1    # "userId":I
    :cond_1
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1360
    if-eqz v1, :cond_0

    .line 1361
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    goto :goto_0

    .line 1363
    :cond_2
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1367
    const-string v2, "CertificatePolicy"

    const-string v3, "Reloading cache for new user"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    goto :goto_0
.end method
