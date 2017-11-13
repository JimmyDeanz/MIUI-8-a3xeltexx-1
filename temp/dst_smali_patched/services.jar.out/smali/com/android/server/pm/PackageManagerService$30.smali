.class Lcom/android/server/pm/PackageManagerService$30;
.super Landroid/content/IIntentReceiver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->unloadMediaPackages(Landroid/util/ArrayMap;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$keys:Ljava/util/Set;

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/util/Set;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$30;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$30;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do force gc after sending broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$30;->val$reportStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$30;->val$keys:Ljava/util/Set;

    # invokes: Lcom/android/server/pm/PackageManagerService;->updateMediaStatus(IILjava/util/Set;)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;IILjava/util/Set;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
