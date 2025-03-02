.class public Landroid/hardware/scontext/SContextInactiveTimerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextInactiveTimerAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextInactiveTimerAttribute"


# instance fields
.field private mAlertCount:I

.field private mDeviceType:I

.field private mDuration:I

.field private mEndTime:I

.field private mStartTime:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    const/16 v0, 0xe10

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "duration"    # I
    .param p3, "alertCount"    # I
    .param p4, "startTime"    # I
    .param p5, "endTime"    # I

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    const/16 v0, 0xe10

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    iput p1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    iput p2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    iput p3, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    iput p4, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    iput p5, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "device_type"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "alert_count"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "start_time"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "end_time"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x23

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The deivce type is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    if-gez v2, :cond_1

    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The duration is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    if-gez v2, :cond_2

    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The alert count is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    if-gez v2, :cond_3

    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The start time is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    if-gez v2, :cond_4

    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The end time is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
