.class Lcom/android/server/enterprise/device/DeviceInfo$5;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 800
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$800(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # invokes: Lcom/android/server/enterprise/device/DeviceInfo;->updateDataStatisticsUsage()J
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1000(Lcom/android/server/enterprise/device/DeviceInfo;)J

    .line 804
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$900(Lcom/android/server/enterprise/device/DeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$800(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I
    invoke-static {v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1100(Lcom/android/server/enterprise/device/DeviceInfo;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 807
    :cond_0
    return-void
.end method
