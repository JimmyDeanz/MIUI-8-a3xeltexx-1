.class final Landroid/hardware/display/DLNADevice$1;
.super Ljava/lang/Object;
.source "DLNADevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DLNADevice;
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
        "Landroid/hardware/display/DLNADevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/DLNADevice;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "deviceIpAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "deviceP2pMacAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "deviceMacAddressFromARP":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "deviceNICType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "uid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 68
    .local v7, "dlnaType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    .line 69
    .local v8, "isSwitchingDevice":Z
    :goto_0
    new-instance v0, Landroid/hardware/display/DLNADevice;

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DLNADevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 70
    .local v0, "dlnaDevice":Landroid/hardware/display/DLNADevice;
    return-object v0

    .line 68
    .end local v0    # "dlnaDevice":Landroid/hardware/display/DLNADevice;
    .end local v8    # "isSwitchingDevice":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/hardware/display/DLNADevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/DLNADevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/DLNADevice;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/DLNADevice;->EMPTY_ARRAY:[Landroid/hardware/display/DLNADevice;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/DLNADevice;

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/hardware/display/DLNADevice$1;->newArray(I)[Landroid/hardware/display/DLNADevice;

    move-result-object v0

    return-object v0
.end method
