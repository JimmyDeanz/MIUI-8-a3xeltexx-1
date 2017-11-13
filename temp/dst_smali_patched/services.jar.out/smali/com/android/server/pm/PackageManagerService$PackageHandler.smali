.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    return-void
.end method

.method private connectToService()Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "service":Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    :goto_0
    return v1

    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    goto :goto_0
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$702(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 60
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .local v42, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v31

    .local v31, "idx":I
    move-object/from16 v0, v42

    instance-of v4, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;

    if-nez v4, :cond_1

    const-string v4, "PackageManager"

    const-string v5, "MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INIT_COPY: observer{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v42

    # invokes: Lcom/android/server/pm/PackageManagerService;->getObserverHashCodeFromHandlerParam(Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "          idx{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "          for_user{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PackageManager"

    const-string v5, "Failed to bind to media container service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez v31, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v31    # "idx":I
    .end local v42    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->access$702(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_6

    const-string v4, "PackageManager"

    const-string v5, "Cannot bind to media container service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .restart local v42    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .end local v42    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .end local v30    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    const-string v4, "PackageManager"

    const-string v5, "Waiting to connect to media container service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .restart local v42    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v42, :cond_0

    move-object/from16 v0, v42

    instance-of v4, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;

    if-nez v4, :cond_8

    const-string v4, "PackageManager"

    const-string v5, "MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MCS_BOUND: observer{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v42

    # invokes: Lcom/android/server/pm/PackageManagerService;->getObserverHashCodeFromHandlerParam(Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "          for_user{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    const-string v4, "PackageManager"

    const-string v5, "remove MCS_UNBIND message and Posting MCS_UNBIND 10 secs later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .local v53, "ubmsg":Landroid/os/Message;
    const-wide/16 v4, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v53    # "ubmsg":Landroid/os/Message;
    :cond_a
    const-string v4, "PackageManager"

    const-string v5, "Posting MCS_BOUND for next work in MCS_BOUND "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v42    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_b
    const-string v4, "PackageManager"

    const-string v5, "Empty queue"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    const-string v8, "MCS_RECONNECT"

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PackageManager"

    const-string v5, "Failed to bind to media container service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .restart local v42    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .end local v42    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .end local v30    # "i$":Ljava/util/Iterator;
    :pswitch_4
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    const-string v8, "MCS_UNBIND"

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/pm/PackageManagerService;->is3LMAllowed:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$900()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "PackageManager"

    const-string v5, "Posting MCS_BOUND for next work in MCS_UNBIND "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_5
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    const-string v8, "MCS_GIVE_UP"

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    const-string v8, "SEND_PENDING_BROADCAST"

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v50, 0x0

    .local v50, "size":I
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-nez v4, :cond_11

    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v50

    if-gtz v50, :cond_12

    monitor-exit v5

    goto/16 :goto_0

    :cond_12
    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    .local v41, "packages":[Ljava/lang/String;
    move/from16 v0, v50

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .local v22, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v54, v0

    .local v54, "uids":[I
    const/16 v29, 0x0

    .local v29, "i":I
    const/16 v36, 0x0

    .local v36, "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v40

    .local v40, "packageUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    move/from16 v0, v29

    move/from16 v1, v50

    if-ge v0, v1, :cond_14

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .local v28, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v41, v29

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v22, v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/pm/PackageSetting;

    .local v43, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v43, :cond_13

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v40

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    :goto_5
    aput v4, v54, v29

    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    :cond_13
    const/4 v4, -0x1

    goto :goto_5

    .end local v28    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v43    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_14
    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    .end local v33    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v40    # "packageUserId":I
    :cond_15
    move/from16 v50, v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v29, 0x0

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v50

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v5, v41, v29

    const/4 v8, 0x1

    aget-object v9, v22, v29

    aget v11, v54, v29

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v4, v5, v8, v9, v11}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    :cond_16
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .end local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "i":I
    .end local v36    # "n":I
    .end local v41    # "packages":[Ljava/lang/String;
    .end local v50    # "size":I
    .end local v54    # "uids":[I
    :pswitch_7
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    .local v57, "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_17

    const/16 v18, 0x1

    .local v18, "andCode":Z
    :goto_7
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START_CLEANING_PACKAGE packageName{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "userId{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "andCode{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    const/4 v4, -0x1

    move/from16 v0, v57

    if-ne v0, v4, :cond_18

    :try_start_2
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v58

    .local v58, "users":[I
    move-object/from16 v21, v58

    .local v21, "arr$":[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v30, 0x0

    .local v30, "i$":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_19

    aget v56, v21, v30

    .local v56, "user":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v8, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v56

    move/from16 v1, v18

    invoke-direct {v8, v0, v6, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v8}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .end local v18    # "andCode":Z
    .end local v21    # "arr$":[I
    .end local v30    # "i$":I
    .end local v35    # "len$":I
    .end local v56    # "user":I
    .end local v58    # "users":[I
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_7

    .restart local v18    # "andCode":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v8, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v57

    move/from16 v1, v18

    invoke-direct {v8, v0, v6, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v8}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    :cond_19
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v18    # "andCode":Z
    .end local v57    # "userId":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .local v24, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->delete(I)V

    const/16 v25, 0x0

    .local v25, "deleteOld":Z
    if-eqz v24, :cond_2f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    .local v19, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v45, v0

    .local v45, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    const-string v5, "PackageManager"

    const-string v8, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "POST_INSTALL: observer{"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v19, :cond_24

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v4, :cond_24

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_9
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "}\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "          Handling post-install for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v45

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1a
    move-object/from16 v0, v45

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .restart local v6    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    new-instance v7, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/os/Bundle;-><init>(I)V

    .local v7, "extras":Landroid/os/Bundle;
    const-string v4, "android.intent.extra.UID"

    move-object/from16 v0, v45

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;)V
    invoke-static {v4, v5, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;)V

    :cond_1b
    const/4 v4, 0x0

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .local v17, "updateUsers":[I
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    if-eqz v4, :cond_1c

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v4, v4

    if-nez v4, :cond_25

    :cond_1c
    move-object/from16 v0, v45

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    .local v10, "firstUsers":[I
    :cond_1d
    # getter for: Lcom/android/server/pm/PackageManagerService;->isChinaNal:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1e

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    const-string v5, "com.sec.android.preloadinstaller"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "com.sec.android.extra.PRELOADINSTALL"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1e
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    const-string v5, "com.android.vending"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v23

    .local v23, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    if-eqz v23, :cond_1f

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "isMarketInstallation"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .end local v23    # "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v4, :cond_29

    const/16 v55, 0x1

    .local v55, "update":Z
    :goto_a
    if-eqz v55, :cond_20

    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v12, "android.intent.action.PACKAGE_ADDED"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v6

    move-object v14, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    if-eqz v55, :cond_22

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v12, "android.intent.action.PACKAGE_REPLACED"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v6

    move-object v14, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v12, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v15, v6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1300(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    const/4 v4, 0x1

    new-array v15, v4, [I

    const/4 v4, 0x0

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v5, v15, v4

    .local v15, "uidArray":[I
    new-instance v14, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v14, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v16, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .end local v14    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "uidArray":[I
    :cond_22
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v4, :cond_23

    const/16 v25, 0x1

    :cond_23
    array-length v4, v10

    if-lez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    aget v5, v10, v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageIsBrowser(Ljava/lang/String;I)Z
    invoke-static {v4, v6, v5}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    move-object/from16 v21, v10

    .restart local v21    # "arr$":[I
    :try_start_5
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v30, 0x0

    .restart local v30    # "i$":I
    :goto_b
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_2a

    aget v57, v21, v30

    .restart local v57    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v8, 0x0

    move/from16 v0, v57

    invoke-virtual {v4, v8, v0}, Lcom/android/server/pm/Settings;->setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "firstUsers":[I
    .end local v17    # "updateUsers":[I
    .end local v21    # "arr$":[I
    .end local v30    # "i$":I
    .end local v35    # "len$":I
    .end local v55    # "update":Z
    .end local v57    # "userId":I
    :cond_24
    const-string v4, "null"

    goto/16 :goto_9

    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v17    # "updateUsers":[I
    :cond_25
    const/4 v4, 0x0

    new-array v10, v4, [I

    .restart local v10    # "firstUsers":[I
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_c
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v4, v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_1d

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v56, v4, v29

    .restart local v56    # "user":I
    const/16 v32, 0x1

    .local v32, "isNew":Z
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_d
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v4, v4

    move/from16 v0, v34

    if-ge v0, v4, :cond_26

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    aget v4, v4, v34

    move/from16 v0, v56

    if-ne v4, v0, :cond_27

    const/16 v32, 0x0

    :cond_26
    if-eqz v32, :cond_28

    array-length v4, v10

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v37, v0

    .local v37, "newFirst":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v8, v10

    move-object/from16 v0, v37

    invoke-static {v10, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v4, v10

    aput v56, v37, v4

    move-object/from16 v10, v37

    .end local v37    # "newFirst":[I
    :goto_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_c

    :cond_27
    add-int/lit8 v34, v34, 0x1

    goto :goto_d

    :cond_28
    move-object/from16 v0, v17

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v38, v0

    .local v38, "newUpdate":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v8, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, v17

    array-length v4, v0

    aput v56, v38, v4

    move-object/from16 v17, v38

    goto :goto_e

    .end local v29    # "i":I
    .end local v32    # "isNew":Z
    .end local v34    # "j":I
    .end local v38    # "newUpdate":[I
    .end local v56    # "user":I
    :cond_29
    const/16 v55, 0x0

    goto/16 :goto_a

    .restart local v21    # "arr$":[I
    .restart local v30    # "i$":I
    .restart local v35    # "len$":I
    .restart local v55    # "update":Z
    :cond_2a
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v21    # "arr$":[I
    .end local v30    # "i$":I
    .end local v35    # "len$":I
    :cond_2b
    const/16 v4, 0xc26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getUnknownSourcesSettings()I
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "firstUsers":[I
    .end local v17    # "updateUsers":[I
    .end local v55    # "update":Z
    :cond_2c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    if-eqz v25, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_2d
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "com.android.vending"

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move-object/from16 v0, v45

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2e

    const-string v4, "GATE"

    const-string v5, "<GATE-M> APP_INSTALLING_ERROR </GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v4, :cond_0

    :try_start_9
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result of install: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "{"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v7

    .restart local v7    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v45

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move-object/from16 v0, v45

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    invoke-interface {v4, v5, v8, v9, v7}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .end local v7    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v27

    .local v27, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v27    # "e":Landroid/os/RemoteException;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v10    # "firstUsers":[I
    .restart local v17    # "updateUsers":[I
    .restart local v21    # "arr$":[I
    .restart local v55    # "update":Z
    :catchall_3
    move-exception v4

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v4

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "firstUsers":[I
    .end local v17    # "updateUsers":[I
    .end local v21    # "arr$":[I
    .end local v55    # "update":Z
    :catchall_4
    move-exception v4

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v4

    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v45    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_2f
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bogus post-install token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v24    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v25    # "deleteOld":Z
    :pswitch_9
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    const-string v8, "UPDATED_MEDIA_STATUS"

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    const/16 v44, 0x1

    .local v44, "reportStatus":Z
    :goto_f
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    const/16 v26, 0x1

    .local v26, "doGc":Z
    :goto_10
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportStatus="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", doGc = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v26, :cond_30

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    :cond_30
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/Set;

    .local v20, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/pm/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .end local v20    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_31
    if-eqz v44, :cond_0

    :try_start_c
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v27

    .restart local v27    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "MountService not running?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v26    # "doGc":Z
    .end local v27    # "e":Landroid/os/RemoteException;
    .end local v44    # "reportStatus":Z
    :cond_32
    const/16 v44, 0x0

    goto :goto_f

    .restart local v44    # "reportStatus":Z
    :cond_33
    const/16 v26, 0x0

    goto :goto_10

    .end local v44    # "reportStatus":Z
    :pswitch_a
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    const-string v8, "WRITE_SETTINGS"

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    const/16 v4, 0xd

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v4

    :pswitch_b
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    const-string v8, "WRITE_PACKAGE_RESTRICTIONS"

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    const/16 v4, 0xe

    :try_start_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v57

    .restart local v57    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v57

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_11

    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v57    # "userId":I
    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v4

    .restart local v30    # "i$":Ljava/util/Iterator;
    :cond_34
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .end local v30    # "i$":Ljava/util/Iterator;
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    .local v59, "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageVerificationState;

    .local v51, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v51, :cond_37

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v39, v0

    .local v39, "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_12
    const-string v5, "PackageManager"

    const-string v8, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHECK_PENDING_VERIFICATION: observer{"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v39, :cond_36

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_13
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "}"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PackageManager"

    const-string v5, "VERIFY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHECK_PENDING_VERIFICATION: \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "PackageManager"

    const-string v5, "VERIFY"

    const-string v8, "timeout extended.. wait.."

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_35
    const/16 v39, 0x0

    goto :goto_12

    .restart local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_36
    const-string v4, "null"

    goto :goto_13

    .end local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_37
    const-string v4, "PackageManager"

    const-string v5, "MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHECK_PENDING_VERIFICATION: id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v59

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " no longer exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_38
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/pm/PackageVerificationResponse;

    .local v46, "response":Lcom/android/server/pm/PackageVerificationResponse;
    monitor-enter v51

    :try_start_11
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move-result v4

    if-nez v4, :cond_39

    monitor-exit v51

    goto/16 :goto_0

    :catchall_7
    move-exception v4

    monitor-exit v51
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v4

    :cond_39
    :try_start_12
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->setTimeout()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v51

    # invokes: Lcom/android/server/pm/PackageManagerService;->removePendingHandlerMessage(Lcom/android/server/pm/PackageVerificationState;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)V

    monitor-exit v51
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v59

    move-object/from16 v1, v51

    move-object/from16 v2, v46

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v51

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;Z)Z
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;Z)Z

    goto/16 :goto_0

    .end local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v51    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v59    # "verificationId":I
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    .restart local v59    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageVerificationState;

    .restart local v51    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v51, :cond_3a

    const-string v4, "PackageManager"

    const-string v5, "VERIFY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid verification token "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v59

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " received"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3a
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v39, v0

    .restart local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_14
    const-string v5, "PackageManager"

    const-string v8, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PACKAGE_VERIFIED: observer{"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v39, :cond_3c

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_15
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "}"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PackageManager"

    const-string v5, "VERIFY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PACKAGE_VERIFIED: \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/pm/PackageVerificationResponse;

    .restart local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    monitor-enter v51

    :try_start_13
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move-result v4

    if-nez v4, :cond_3d

    monitor-exit v51

    goto/16 :goto_0

    :catchall_8
    move-exception v4

    monitor-exit v51
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v4

    .end local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_3b
    const/16 v39, 0x0

    goto :goto_14

    .restart local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_3c
    const-string v4, "null"

    goto :goto_15

    .restart local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_3d
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v51

    # invokes: Lcom/android/server/pm/PackageManagerService;->removePendingHandlerMessage(Lcom/android/server/pm/PackageVerificationState;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)V

    monitor-exit v51
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v59

    move-object/from16 v1, v51

    move-object/from16 v2, v46

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v51

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;Z)Z
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;Z)Z

    goto/16 :goto_0

    .end local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v51    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v59    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .local v42, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    move-object/from16 v0, v42

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    move-object/from16 v0, v42

    iget-boolean v9, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    move-object/from16 v0, v42

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->verifyIntentFiltersIfNeeded(IIZLandroid/content/pm/PackageParser$Package;)V
    invoke-static {v4, v5, v8, v9, v11}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    goto/16 :goto_0

    .end local v42    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    .restart local v59    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/IntentFilterVerificationState;

    .local v51, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v51, :cond_3e

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid IntentFilter verification token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " received"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3e
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v57

    .restart local v57    # "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .local v46, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3f

    :cond_3f
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerifier:Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v4

    move/from16 v0, v59

    invoke-interface {v4, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_0

    .end local v46    # "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    .end local v51    # "state":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v57    # "userId":I
    .end local v59    # "verificationId":I
    :pswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    .restart local v59    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageVerificationState;

    .local v51, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v51, :cond_0

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v39, v0

    .restart local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_16
    const-string v5, "PackageManager"

    const-string v8, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUFFICIENT_VERIFICATION_TIMEOUT: observer{"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v39, :cond_41

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_17
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "}"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PackageManager"

    const-string v5, "VERIFY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUFFICIENT_VERIFICATION_TIMEOUT: \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/pm/PackageVerificationResponse;

    .local v46, "response":Lcom/android/server/pm/PackageVerificationResponse;
    monitor-enter v51

    :try_start_15
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->clearSufficientVerifiers()V

    monitor-exit v51
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v59

    move-object/from16 v1, v51

    move-object/from16 v2, v46

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    goto/16 :goto_0

    .end local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_40
    const/16 v39, 0x0

    goto :goto_16

    .restart local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_41
    const-string v4, "null"

    goto :goto_17

    .restart local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :catchall_9
    move-exception v4

    :try_start_16
    monitor-exit v51
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v4

    .end local v39    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v46    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v51    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v59    # "verificationId":I
    :pswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .local v49, "scanId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageScanState;

    .local v51, "state":Lcom/android/server/pm/PackageScanState;
    if-eqz v51, :cond_0

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v19

    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    const/16 v4, 0x13

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_43

    const/16 v48, -0x15

    .local v48, "ret":I
    const-string v4, "PackageManager"

    const-string v5, "Failing package install after timeout"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    move/from16 v1, v48

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageScanState;->getTempPackage()Ljava/io/File;

    move-result-object v52

    .local v52, "temp":Ljava/io/File;
    if-eqz v52, :cond_42

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t delete temporary file: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v48    # "ret":I
    .end local v52    # "temp":Ljava/io/File;
    :cond_43
    const/16 v48, -0x6e

    .restart local v48    # "ret":I
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_2

    move-result v48

    goto :goto_18

    :catch_2
    move-exception v27

    .restart local v27    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "Could not contact the ContainerService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v27    # "e":Landroid/os/RemoteException;
    .end local v48    # "ret":I
    .end local v49    # "scanId":I
    .end local v51    # "state":Lcom/android/server/pm/PackageScanState;
    :pswitch_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .restart local v49    # "scanId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageScanState;

    .restart local v51    # "state":Lcom/android/server/pm/PackageScanState;
    if-nez v51, :cond_44

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid scan token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v47

    .local v47, "responseCode":I
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v19

    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const/16 v48, -0x16

    .restart local v48    # "ret":I
    const/16 v4, 0x3e8

    move/from16 v0, v47

    if-ne v0, v4, :cond_45

    const/16 v48, -0x6e

    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_3

    move-result v48

    :cond_45
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    move/from16 v1, v48

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageScanState;->getTempPackage()Ljava/io/File;

    move-result-object v52

    .restart local v52    # "temp":Ljava/io/File;
    if-eqz v52, :cond_46

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_46

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t delete temporary file: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v52    # "temp":Ljava/io/File;
    :catch_3
    move-exception v27

    .restart local v27    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "Could not contact the ContainerService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
