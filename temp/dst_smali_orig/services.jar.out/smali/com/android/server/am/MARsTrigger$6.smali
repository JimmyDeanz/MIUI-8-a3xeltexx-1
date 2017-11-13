.class Lcom/android/server/am/MARsTrigger$6;
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
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "nowELAPSED":J
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J
    invoke-static {v1}, Lcom/android/server/am/MARsTrigger;->access$2000(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v10

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J
    invoke-static {v1}, Lcom/android/server/am/MARsTrigger;->access$2100(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v12

    sub-long v12, v6, v12

    add-long v4, v10, v12

    .local v4, "expectedClockTime":J
    sub-long v2, v8, v4

    .local v2, "changedTime":J
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTimeForTimeChanged(J)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J
    invoke-static {v1, v8, v9}, Lcom/android/server/am/MARsTrigger;->access$2002(Lcom/android/server/am/MARsTrigger;J)J

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J
    invoke-static {v1, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$2102(Lcom/android/server/am/MARsTrigger;J)J

    .end local v2    # "changedTime":J
    .end local v4    # "expectedClockTime":J
    .end local v6    # "nowELAPSED":J
    .end local v8    # "nowRTC":J
    :cond_0
    return-void
.end method
