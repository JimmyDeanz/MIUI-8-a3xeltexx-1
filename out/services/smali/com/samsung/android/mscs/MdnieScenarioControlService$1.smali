.class Lcom/samsung/android/mscs/MdnieScenarioControlService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mscs/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPid(I)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 436
    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 437
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 438
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 441
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method getPidFromPackageName(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 446
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 450
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getUidFromPackageName(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 455
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 459
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 12
    .param p1, "pid_"    # I
    .param p2, "uid_"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 464
    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    if-nez v8, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v2, 0x0

    .line 469
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 471
    .local v0, "className":Ljava/lang/String;
    move v3, p1

    .line 472
    .local v3, "pid":I
    move v5, p2

    .line 474
    .local v5, "uid":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 476
    .local v6, "time":J
    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 477
    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I
    invoke-static {v10}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 480
    .end local v6    # "time":J
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 481
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 484
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 485
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {p0, v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v3

    .line 487
    invoke-virtual {p0, v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v5

    .line 488
    const-string v8, "MdnieScenarioControlService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    className : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 492
    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 493
    .local v1, "msg":Landroid/os/Message;
    const/4 v8, 0x0

    iput v8, v1, Landroid/os/Message;->what:I

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 495
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 496
    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 497
    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 503
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    return-void
.end method
