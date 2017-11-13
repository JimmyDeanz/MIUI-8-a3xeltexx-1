.class public Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextDevicePhysicalContextMonitorAttribute.java"


# static fields
.field private static DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I = 0x0

.field private static DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextDevicePhysicalContextMonitorAttribute"


# instance fields
.field private mData:I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    .line 36
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "data"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    .line 36
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    .line 69
    iput p1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    .line 70
    iput p2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    .line 71
    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    .line 72
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "dpcm_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "dpcm_data"

    iget v2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 93
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    iget v1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    if-gez v1, :cond_0

    .line 78
    const-string v1, "SContextDevicePhysicalContextMonitorAttribute"

    const-string v2, "Mode value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return v0

    .line 81
    :cond_0
    iget v1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    if-gez v1, :cond_1

    .line 82
    const-string v1, "SContextDevicePhysicalContextMonitorAttribute"

    const-string v2, "Data value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
