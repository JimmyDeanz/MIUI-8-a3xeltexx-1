.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;
.super Landroid/content/BroadcastReceiver;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, -0x2710

    .line 1026
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1028
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    monitor-enter v6

    .line 1029
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1030
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1031
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1032
    .local v4, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-eqz v4, :cond_0

    .line 1033
    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V

    .line 1030
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1036
    .end local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_1
    monitor-exit v6

    .line 1072
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1036
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1037
    :cond_3
    const-string v5, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1038
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStarted(I)V
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_1

    .line 1040
    :cond_4
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1041
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStopped(I)V
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_1

    .line 1043
    :cond_5
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1044
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_1

    .line 1047
    :cond_6
    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1049
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 1051
    :cond_7
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onBroadcastReceived(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1054
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    monitor-enter v6

    .line 1055
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->getSendingUserId()I

    move-result v3

    .line 1056
    .local v3, "sendingUser":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    .line 1057
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1058
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_a

    .line 1059
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1060
    .restart local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-eqz v4, :cond_8

    .line 1061
    invoke-virtual {v4, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 1058
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1065
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_9
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1066
    .restart local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-eqz v4, :cond_a

    .line 1067
    invoke-virtual {v4, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 1070
    .end local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_a
    monitor-exit v6

    goto/16 :goto_1

    .end local v3    # "sendingUser":I
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method
