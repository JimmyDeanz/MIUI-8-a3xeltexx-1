.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x3eb

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    const-string v3, "ent_type"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "apnType":Ljava/lang/String;
    const-string v3, "com.android.server.enterprise.billing.mapping_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .local v1, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    const/16 v3, 0x3ea

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_0

    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v3, "com.android.server.enterprise.billing.action_enable_status_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_1

    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v3, "com.android.server.enterprise.billing.mobile_fallback_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_7
    const/16 v3, 0x3ec

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_2

    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    const-string v3, "com.android.server.enterprise.billing.wifi_fallback_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_a
    const/16 v3, 0x3ed

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_3

    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    const-string v3, "com.android.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_d
    const/16 v3, 0x3ee

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_4

    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_e
    const-string v3, "com.android.server.enterprise.billing.roaming_modified"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_10
    const/16 v3, 0x3ef

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_5

    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_11
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_12
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    if-eqz v0, :cond_13

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_13
    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_6

    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_14
    return-void
.end method
