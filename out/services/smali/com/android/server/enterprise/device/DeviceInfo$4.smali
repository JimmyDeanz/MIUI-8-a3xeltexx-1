.class Lcom/android/server/enterprise/device/DeviceInfo$4;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 787
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # invokes: Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesInit()V
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$500(Lcom/android/server/enterprise/device/DeviceInfo;)V

    .line 789
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/16 v1, 0xa

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$602(Lcom/android/server/enterprise/device/DeviceInfo;I)I

    .line 792
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$800(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$700(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$900(Lcom/android/server/enterprise/device/DeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$800(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$700(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
