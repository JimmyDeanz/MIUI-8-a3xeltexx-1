.class final Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mscs/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Lcom/samsung/android/mscs/MdnieScenarioControlService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p2, "x1"    # Lcom/samsung/android/mscs/MdnieScenarioControlService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v6, "MdnieScenarioControlService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action  :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "keyguard"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .local v2, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$102(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    .end local v2    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "keyguard"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .restart local v2    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$102(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->receive_screen_on_intent()V
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_0

    .end local v2    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_3
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->receive_screen_off_intent()V
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_0

    :cond_4
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    iget-object v6, v6, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x0

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$102(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "MdnieScenarioControlService"

    const-string v7, "failed to onForegroundActivitiesChanged"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const-string v7, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$402(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->first_MultiWindowOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$502(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->receive_multi_window_on_intent()V
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$600(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "time":J
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$900(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDetailViewState:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1002(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$900(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x0

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDetailViewState:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1002(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xb

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEnd:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1302(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "mode"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "statusName":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGameModeLauncher:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1502(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1600(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xf

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1900(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x10

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v3    # "statusName":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v7, 0x0

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGameModeLauncher:Z
    invoke-static {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$1502(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x11

    iget-object v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2000(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method
