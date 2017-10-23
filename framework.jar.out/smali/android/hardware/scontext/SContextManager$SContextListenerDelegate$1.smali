.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;
.super Landroid/os/Handler;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1476
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iput-object p3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->val$this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1479
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1480
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/scontext/SContextEvent;

    .line 1481
    .local v0, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    iget-object v2, v0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v1

    .line 1482
    .local v1, "type":I
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z
    invoke-static {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$100(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1483
    const-string v2, "SContextManager"

    const-string v3, "Data is received so remove listener related HistoryData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    .line 1485
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v2, v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 1499
    .end local v0    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 1487
    .restart local v0    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    .restart local v1    # "type":I
    :cond_1
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v2, v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    # invokes: Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    invoke-static {v2, v0}, Landroid/hardware/scontext/SContextManager;->access$200(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1488
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_0

    .line 1490
    :cond_2
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v2, v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    # getter for: Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v2}, Landroid/hardware/scontext/SContextManager;->access$300(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1491
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v2, v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    # getter for: Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v2}, Landroid/hardware/scontext/SContextManager;->access$300(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1492
    const-string v2, "SContextManager"

    const-string v3, "Listener is already registered and history data is sent to Application"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v2, v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    # getter for: Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v2}, Landroid/hardware/scontext/SContextManager;->access$300(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_0
.end method
