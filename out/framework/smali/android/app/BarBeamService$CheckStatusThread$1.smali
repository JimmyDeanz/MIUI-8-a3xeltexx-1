.class Landroid/app/BarBeamService$CheckStatusThread$1;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BarBeamService$CheckStatusThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService$CheckStatusThread;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x1e

    .line 217
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1

    .line 218
    const/4 v0, 0x1

    .line 219
    .local v0, "ret_status":Z
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    const-string v1, "BarBeamService"

    const-string v2, "check status ++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->this$0:Landroid/app/BarBeamService;

    invoke-virtual {v1}, Landroid/app/BarBeamService;->getCurrentStatus()Z

    move-result v0

    .line 228
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 229
    const-string v1, "BarBeamService"

    const-string v2, "check status --"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->this$0:Landroid/app/BarBeamService;

    const/4 v2, 0x0

    # setter for: Landroid/app/BarBeamService;->isRunning:Z
    invoke-static {v1, v2}, Landroid/app/BarBeamService;->access$102(Landroid/app/BarBeamService;Z)Z

    .line 231
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    .end local v0    # "ret_status":Z
    :cond_1
    return-void

    .line 224
    .restart local v0    # "ret_status":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
