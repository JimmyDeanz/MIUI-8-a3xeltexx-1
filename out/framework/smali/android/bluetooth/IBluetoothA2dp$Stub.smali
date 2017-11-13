.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final TRANSACTION_adjustAvrcpAbsoluteVolume:I = 0xb

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getActiveStreamDevice:I = 0x4

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getConnectionState:I = 0x7

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_isA2dpPlaying:I = 0xd

.field static final TRANSACTION_isAvrcpAbsoluteVolumeSupported:I = 0xa

.field static final TRANSACTION_selectstream:I = 0x3

.field static final TRANSACTION_setAvrcpAbsoluteVolume:I = 0xc

.field static final TRANSACTION_setPriority:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothA2dp;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v4, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 61
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 67
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v6, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 75
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 76
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 82
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v6, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 85
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 90
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 91
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 97
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v6, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 99
    .local v2, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v2, p3, v5}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 105
    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v2    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v4, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 119
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_6
    const-string v4, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 122
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    .line 123
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":[I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_7
    const-string v4, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 132
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 137
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 138
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 144
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string v6, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 147
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 153
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 155
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v2, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 161
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_9
    const-string v4, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 164
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 169
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 170
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 176
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string v6, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v2

    .line 178
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v2, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v4, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->adjustAvrcpAbsoluteVolume(I)V

    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v4, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAvrcpAbsoluteVolume(I)V

    goto/16 :goto_0

    .line 200
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string v6, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 203
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 208
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 209
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v2, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
