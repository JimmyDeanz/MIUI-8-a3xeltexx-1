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
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "data"    # I

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    iput p1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "dpcm_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpcm_data"

    iget v2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    if-gez v1, :cond_0

    const-string v1, "SContextDevicePhysicalContextMonitorAttribute"

    const-string v2, "Mode value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    if-gez v1, :cond_1

    const-string v1, "SContextDevicePhysicalContextMonitorAttribute"

    const-string v2, "Data value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
