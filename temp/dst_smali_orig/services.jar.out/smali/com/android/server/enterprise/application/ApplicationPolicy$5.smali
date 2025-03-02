.class Lcom/android/server/enterprise/application/ApplicationPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V
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
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v9, "ApplicationPolicy"

    const-string v10, "User switched"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2100()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_0

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2100()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, "android.intent.extra.user_handle"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .local v8, "userId":I
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2100()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "adminLuid":J
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    .local v3, "adminUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v6, 0x0

    .local v6, "persInfo":Landroid/content/pm/PersonaInfo;
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_6

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-nez v9, :cond_5

    iget v7, v6, Landroid/content/pm/PersonaInfo;->id:I

    .local v7, "personaId":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaObservers:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2500(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v10, v10, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {v5, v9, v10, v7, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Context;II)V

    .local v5, "observer":Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaObservers:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2500(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "observer":Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
    :cond_4
    const-string v9, "ApplicationPolicy"

    const-string v10, "Persona is locked, postpone app start"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "personaId":I
    :cond_5
    const-string v9, "ApplicationPolicy"

    const-string v10, "Persona no longer valid removing from cache"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2100()Ljava/util/Map;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->startCachedAppsForActiveUser(JI)V
    invoke-static {v9, v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2300(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto/16 :goto_1
.end method
