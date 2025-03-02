.class public Landroid/hardware/scontext/SContextAutoRotationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoRotationAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextAutoRotationAttribute"


# instance fields
.field private mDeviceType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 55
    iput p1, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 56
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 57
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "device_type"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 74
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 64
    :cond_0
    const-string v0, "SContextAutoRotationAttribute"

    const-string v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
