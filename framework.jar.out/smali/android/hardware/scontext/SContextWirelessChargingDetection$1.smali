.class final Landroid/hardware/scontext/SContextWirelessChargingDetection$1;
.super Ljava/lang/Object;
.source "SContextWirelessChargingDetection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextWirelessChargingDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/scontext/SContextWirelessChargingDetection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextWirelessChargingDetection;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 157
    new-instance v0, Landroid/hardware/scontext/SContextWirelessChargingDetection;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextWirelessChargingDetection;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Landroid/hardware/scontext/SContextWirelessChargingDetection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection$1;->newArray(I)[Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v0

    return-object v0
.end method
