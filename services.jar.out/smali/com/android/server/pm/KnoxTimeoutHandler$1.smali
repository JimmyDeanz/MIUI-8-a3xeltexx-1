.class Lcom/android/server/pm/KnoxTimeoutHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    :cond_0
    const-string v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "invalid action!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 385
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 386
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 387
    const-string v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "invalid bundle!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_3
    const-string/jumbo v3, "personaId"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 392
    .local v2, "userId":I
    const-string v3, "KnoxTimeoutHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " time out  for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 394
    const-string v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "container userId does not exist!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$800(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 401
    :cond_5
    const-string v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "lock it up"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 403
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$800(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 404
    const-string v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "keyguard show"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_0

    .line 412
    :cond_6
    const-string v3, "KnoxTimeoutHandler"

    const-string v4, "User is inside container and its trust is granted. By pass keyguard and reset security timeout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V
    invoke-static {v3, v2}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$100(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto/16 :goto_0
.end method
