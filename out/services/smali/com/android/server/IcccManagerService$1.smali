.class Lcom/android/server/IcccManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IcccManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IcccManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/IcccManagerService;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v5, v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receive intent action is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v5, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    const-string/jumbo v5, "status"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SysScope scanning finished"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 70
    const-string v5, "Result"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/IcccManagerService;->mSysScopeResult:I
    invoke-static {v5}, Lcom/android/server/IcccManagerService;->access$002(I)I

    .line 71
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v5, v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSysScopeResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/IcccManagerService;->mSysScopeResult:I
    invoke-static {}, Lcom/android/server/IcccManagerService;->access$000()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->enforcePermission()Z
    invoke-static {v5}, Lcom/android/server/IcccManagerService;->access$100(Lcom/android/server/IcccManagerService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->setSysScopeField()V
    invoke-static {v5}, Lcom/android/server/IcccManagerService;->access$200(Lcom/android/server/IcccManagerService;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v5, v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Not System UID. Only system UID caller can change status"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_2
    const-string v5, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 82
    .local v2, "data":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 83
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v5, v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "data is null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_3
    const-string v5, "command"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "command":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v5, v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v5, "AT+ICCCINFO=1,0,0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "iccc_res_intent":Landroid/content/Intent;
    const-string v4, "AT+ICCCINFO=1,0,0\r\n+ICCCINFO:1,1,"

    .line 90
    .local v4, "iccc_response":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/server/IcccManagerService;->access$300(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string/jumbo v5, "response"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # getter for: Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/IcccManagerService;->access$400(Lcom/android/server/IcccManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
