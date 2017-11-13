.class public abstract Landroid/net/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IEthernetManager"

.field static final TRANSACTION_UpdateEthDevInfo:I = 0xb

.field static final TRANSACTION_addListener:I = 0x4

.field static final TRANSACTION_getCheckConnecting:I = 0x12

.field static final TRANSACTION_getConfiguration:I = 0x1

.field static final TRANSACTION_getConnectorConnected:I = 0x14

.field static final TRANSACTION_getDeviceNameList:I = 0xe

.field static final TRANSACTION_getEthState:I = 0xd

.field static final TRANSACTION_getEthernetServiceMessenger:I = 0x6

.field static final TRANSACTION_getHWConnected:I = 0x17

.field static final TRANSACTION_getSavedEthConfig:I = 0x8

.field static final TRANSACTION_getStackConnected:I = 0x15

.field static final TRANSACTION_getTotalInterface:I = 0x9

.field static final TRANSACTION_getUserDisabled:I = 0x10

.field static final TRANSACTION_isAvailable:I = 0x3

.field static final TRANSACTION_isEthConfigured:I = 0x7

.field static final TRANSACTION_isEthReset:I = 0x11

.field static final TRANSACTION_removeListener:I = 0x5

.field static final TRANSACTION_setCheckConnecting:I = 0x13

.field static final TRANSACTION_setConfiguration:I = 0x2

.field static final TRANSACTION_setEthMode:I = 0xa

.field static final TRANSACTION_setEthState:I = 0xc

.field static final TRANSACTION_setHWConnected:I = 0x18

.field static final TRANSACTION_setStackConnected:I = 0x16

.field static final TRANSACTION_setUserDisabled:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IEthernetManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.net.IEthernetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IEthernetManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IEthernetManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/net/IEthernetManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getConfiguration()Landroid/net/IpConfiguration;

    move-result-object v1

    .line 53
    .local v1, "_result":Landroid/net/IpConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v1, p3, v3}, Landroid/net/IpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v1    # "_result":Landroid/net/IpConfiguration;
    :sswitch_2
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v2, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpConfiguration;

    .line 73
    .local v0, "_arg0":Landroid/net/IpConfiguration;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->setConfiguration(Landroid/net/IpConfiguration;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/net/IpConfiguration;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/IpConfiguration;
    goto :goto_1

    .line 79
    .end local v0    # "_arg0":Landroid/net/IpConfiguration;
    :sswitch_3
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isAvailable()Z

    move-result v1

    .line 81
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->addListener(Landroid/net/IEthernetServiceListener;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Landroid/net/IEthernetServiceListener;
    :sswitch_5
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->removeListener(Landroid/net/IEthernetServiceListener;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0    # "_arg0":Landroid/net/IEthernetServiceListener;
    :sswitch_6
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 107
    .local v1, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v1, p3, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 113
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "_result":Landroid/os/Messenger;
    :sswitch_7
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isEthConfigured()Z

    move-result v1

    .line 121
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v1    # "_result":Z
    :sswitch_8
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getSavedEthConfig()Landroid/net/EthernetDevInfo;

    move-result-object v1

    .line 129
    .local v1, "_result":Landroid/net/EthernetDevInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v1, p3, v3}, Landroid/net/EthernetDevInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 135
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "_result":Landroid/net/EthernetDevInfo;
    :sswitch_9
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getTotalInterface()I

    move-result v1

    .line 143
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v1    # "_result":I
    :sswitch_a
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->setEthMode(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 161
    sget-object v2, Landroid/net/EthernetDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetDevInfo;

    .line 166
    .local v0, "_arg0":Landroid/net/EthernetDevInfo;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":Landroid/net/EthernetDevInfo;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/EthernetDevInfo;
    goto :goto_2

    .line 172
    .end local v0    # "_arg0":Landroid/net/EthernetDevInfo;
    :sswitch_c
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->setEthState(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getEthState()I

    move-result v1

    .line 183
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    .end local v1    # "_result":I
    :sswitch_e
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    .end local v1    # "_result":[Ljava/lang/String;
    :sswitch_f
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 200
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->setUserDisabled(Z)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v2

    .line 199
    goto :goto_3

    .line 206
    :sswitch_10
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getUserDisabled()Z

    move-result v1

    .line 208
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v1    # "_result":Z
    :sswitch_11
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isEthReset()Z

    move-result v1

    .line 216
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v1    # "_result":Z
    :sswitch_12
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getCheckConnecting()I

    move-result v1

    .line 224
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 230
    .end local v1    # "_result":I
    :sswitch_13
    const-string v2, "android.net.IEthernetManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->setCheckConnecting(I)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":I
    :sswitch_14
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getConnectorConnected()Z

    move-result v1

    .line 241
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v1    # "_result":Z
    :sswitch_15
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getStackConnected()Z

    move-result v1

    .line 249
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 255
    .end local v1    # "_result":Z
    :sswitch_16
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    move v0, v3

    .line 258
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->setStackConnected(Z)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_c
    move v0, v2

    .line 257
    goto :goto_4

    .line 264
    :sswitch_17
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getHWConnected()Z

    move-result v1

    .line 266
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v1, :cond_d

    move v2, v3

    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v1    # "_result":Z
    :sswitch_18
    const-string v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    move v0, v3

    .line 275
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->setHWConnected(Z)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_e
    move v0, v2

    .line 274
    goto :goto_5

    .line 42
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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
