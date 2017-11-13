.class Lcom/samsung/android/server/iris/IrisService$2;
.super Landroid/content/BroadcastReceiver;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$2;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "action":Ljava/lang/String;
    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, "userId":I
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_USER_REMOVED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$2;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v2, v2, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 242
    .end local v1    # "userId":I
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$2;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v2, v2, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/server/iris/IrisService$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/iris/IrisService$2$1;-><init>(Lcom/samsung/android/server/iris/IrisService$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "com.android.server.iris.ACTION_LOCKOUT_RESET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$2;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->resetFailedAttempts()V
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$300(Lcom/samsung/android/server/iris/IrisService;)V

    goto :goto_0
.end method
