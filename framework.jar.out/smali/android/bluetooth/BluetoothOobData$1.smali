.class final Landroid/bluetooth/BluetoothOobData$1;
.super Ljava/lang/Object;
.source "BluetoothOobData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothOobData;
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
        "Landroid/bluetooth/BluetoothOobData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothOobData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 222
    new-instance v0, Landroid/bluetooth/BluetoothOobData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothOobData;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothOobData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothOobData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothOobData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothOobData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 225
    new-array v0, p1, [Landroid/bluetooth/BluetoothOobData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothOobData$1;->newArray(I)[Landroid/bluetooth/BluetoothOobData;

    move-result-object v0

    return-object v0
.end method
