.class Lcom/android/server/am/MARsTrigger$3;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "PACKAGE_NAME"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->updateUDSPackages(Ljava/util/ArrayList;)V

    .end local v3    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v4, v6, v5}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "com.android.server.am.MARS_CANCEL_UDS_POLICY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    const-string v4, "PACKAGE_NAME"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .restart local v3    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v5, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    goto :goto_0
.end method
