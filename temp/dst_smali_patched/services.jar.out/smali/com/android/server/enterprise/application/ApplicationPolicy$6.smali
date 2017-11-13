.class Lcom/android/server/enterprise/application/ApplicationPolicy$6;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v4, "ApplicationPolicy"

    const-string v5, "boot completed - refreshWidgetStatus"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mBootCompleted:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2902(Lcom/android/server/enterprise/application/ApplicationPolicy;Z)Z

    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$6$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$6$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$6;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$6$1;->start()V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .local v2, "userManager":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$300(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    return-void
.end method
