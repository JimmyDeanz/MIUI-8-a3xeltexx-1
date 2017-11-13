.class Lcom/android/server/am/MARsTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    .line 438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "action":Ljava/lang/String;
    const-string v7, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 442
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .line 443
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v8, "MARS_GCM_LOCKER_REPEAT_ALARM"

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mGcmLockerRepeatAlarmInterval:J
    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->access$1500(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v10

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    const-string v7, "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.server.am.ACTION_ADJ14BG_KILLED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 447
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 448
    .local v2, "currentTime":J
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastSPCMWorkingTime:J
    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->access$1600(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 450
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastSPCMWorkingTime:J
    invoke-static {v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->access$1602(Lcom/android/server/am/MARsTrigger;J)J

    .line 451
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto :goto_0

    .line 455
    .end local v2    # "currentTime":J
    :cond_4
    const-string v7, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 458
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v7, v9, v8}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_6
    const-string v7, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 462
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v7, v9, v8}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .line 463
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v8, "MARS_APP_LOCKER_REPEAT_ALARM"

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J
    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->access$1700(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v10

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 466
    :cond_8
    const-string v7, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 467
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v7, v10, v8}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :cond_9
    const-string v7, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 471
    :cond_a
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v7, v10, v8}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .line 475
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    new-instance v8, Lcom/android/server/am/MARsTrigger$2$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/MARsTrigger$2$1;-><init>(Lcom/android/server/am/MARsTrigger$2;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 488
    :cond_b
    const-string v7, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 489
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    .line 490
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v8, "MARS_AUTO_RUN_POLICY_ALARM"

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v9, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 492
    :cond_c
    const-string v7, "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 493
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    .line 494
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v8, "MARS_AUTO_RUN_REPEAT_ALARM"

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v9, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 496
    :cond_d
    const-string v7, "android.intent.action.SET_RUNNING_LOCATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 497
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, p2}, Lcom/android/server/am/MARsPolicyManager;->updateRunningLocationPackages(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 499
    :cond_e
    const-string v7, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 501
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 502
    const-string v7, "POLICY_NAME"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "policyName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->policyNameToInt(Ljava/lang/String;)I
    invoke-static {v7, v5}, Lcom/android/server/am/MARsTrigger;->access$1900(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I

    move-result v6

    .line 504
    .local v6, "policyNum":I
    const-string v7, "PACKAGE_NAME"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 505
    .local v4, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 506
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method
