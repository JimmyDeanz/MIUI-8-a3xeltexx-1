.class Lcom/android/server/am/MARsTrigger$1;
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
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v4, v4, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->clearStorageDiffWhileScreenOff()V

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationDiffWhileScreenOff()V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v7}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v5, "MARS_GCM_LOCKER_POLICY_ALARM"

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mGcmLockerPolicyInterval:J
    invoke-static {v6}, Lcom/android/server/am/MARsTrigger;->access$000(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v6

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v5, "MARS_APP_LOCKER_POLICY_ALARM"

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J
    invoke-static {v6}, Lcom/android/server/am/MARsTrigger;->access$200(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v6

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v4, v4, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mTriggerAutoRunPolicyImmediately:Z
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$300(Lcom/android/server/am/MARsTrigger;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v5, "MARS_AUTO_RUN_POLICY_ALARM"

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v6, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v5, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v6, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v8, v8, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v6, v8

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_9
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v6}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v4, v4, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->clearNotiUpdateWhileScreenOn()V

    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$400(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$400(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_b
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_c
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$700(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$700(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_d
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$800(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$800(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_e
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$900(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$900(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_f
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$1000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$1000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_10
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$1100(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$1100(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_11
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$1200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$1200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_12
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v6}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto/16 :goto_2

    :cond_13
    const-string v4, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "extras":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "onUpgrade":Z
    if-eqz v1, :cond_14

    const-string v4, "MARS_EXTRA"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "tmp":Ljava/lang/String;
    const-string v4, "update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v2, 0x1

    .end local v3    # "tmp":Ljava/lang/String;
    :cond_14
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v4, v2}, Lcom/android/server/am/MARsDBManager;->requestFillInDB(Z)V

    goto/16 :goto_1

    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "onUpgrade":Z
    :cond_15
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->setDataConnectionConnected()V

    goto/16 :goto_1
.end method
