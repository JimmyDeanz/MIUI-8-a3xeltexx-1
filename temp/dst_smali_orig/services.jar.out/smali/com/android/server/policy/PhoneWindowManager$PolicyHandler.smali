.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    const/16 v4, 0x69

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$700(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$800(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$900(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    :sswitch_7
    const-string v0, "WindowManager"

    const-string v1, "Waiting for Shared Device keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "keyguard shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "SIM lock identify API delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardOwner()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "keyguard not shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, "SIM lock identify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardOwner()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp()V

    goto/16 :goto_0

    :sswitch_8
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v1, "Setting mKeyguardDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$1100()I

    move-result v1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "WindowManager"

    const-string v1, "!@Boot: Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$1100()I

    move-result v1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_0

    :sswitch_a
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    const-string v1, "Setting mWindowManagerDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$1100()I

    move-result v1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1300(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1400(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :sswitch_d
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V
    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1600(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_2

    :sswitch_e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7

    :goto_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->endCallPress(JZI)V
    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1700(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishEndCallKeyPress()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    :sswitch_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1900(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_8

    :goto_4
    # invokes: Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2000(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_4

    :sswitch_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->notifyToSSRM(Z)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2100(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->enableToolBox()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->disableToolBox()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "WindowManager"

    const-string v1, "MSG_REQUEST_TRAVERSAL_BY_PWM"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_0
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_14
        0x3e -> :sswitch_e
        0x69 -> :sswitch_7
    .end sparse-switch
.end method
