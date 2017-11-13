.class Landroid/app/BarBeamService$2;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    const-string v2, "BarBeamService"

    const-string v3, "Led in handler : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    # getter for: Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;
    invoke-static {v2}, Landroid/app/BarBeamService;->access$200(Landroid/app/BarBeamService;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    # getter for: Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;
    invoke-static {v2}, Landroid/app/BarBeamService;->access$200(Landroid/app/BarBeamService;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    const/4 v3, 0x0

    # setter for: Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Landroid/app/BarBeamService;->access$202(Landroid/app/BarBeamService;Ljava/util/Timer;)Ljava/util/Timer;

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    # invokes: Landroid/app/BarBeamService;->stopBlinkLED()V
    invoke-static {v2}, Landroid/app/BarBeamService;->access$300(Landroid/app/BarBeamService;)V

    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    iget-object v3, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    iget-object v2, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamService$Listener;

    .local v1, "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v1}, Landroid/app/BarBeamService$Listener;->onBeamingStoppped()V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    iget-object v2, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_3

    const-string v2, "BarBeamService"

    const-string v3, "Led in handler : true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    # invokes: Landroid/app/BarBeamService;->blinkLED()V
    invoke-static {v2}, Landroid/app/BarBeamService;->access$400(Landroid/app/BarBeamService;)V

    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_4

    const-string v2, "BarBeamService"

    const-string v3, "StopBeaming by no binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-virtual {v2}, Landroid/app/BarBeamService;->stopBeaming()V

    :cond_4
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
