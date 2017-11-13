.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectWifiDisplay:I = 0x6

.field static final TRANSACTION_connectWifiDisplayWithMode:I = 0x17

.field static final TRANSACTION_connectWifiDisplayWithModeEx:I = 0x18

.field static final TRANSACTION_connectWifiDisplayWithPin:I = 0x16

.field static final TRANSACTION_createVirtualDisplay:I = 0xe

.field static final TRANSACTION_disableWifiDisplay:I = 0x1c

.field static final TRANSACTION_disconnectForMirroringSwitching:I = 0x2c

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x7

.field static final TRANSACTION_enableOverlayMagnifier:I = 0x34

.field static final TRANSACTION_enableWifiDisplay:I = 0x19

.field static final TRANSACTION_enableWifiDisplayEx:I = 0x1a

.field static final TRANSACTION_enableWifiDisplayEx2:I = 0x1b

.field static final TRANSACTION_forgetWifiDisplay:I = 0x9

.field static final TRANSACTION_getActiveDLNADevice:I = 0x31

.field static final TRANSACTION_getActiveDLNAState:I = 0x32

.field static final TRANSACTION_getDisplayIdOfDevice:I = 0x39

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getDisplayInfoEx:I = 0x38

.field static final TRANSACTION_getLastConnectedDLNADevice:I = 0x2d

.field static final TRANSACTION_getLastConnectedDisplay:I = 0x2b

.field static final TRANSACTION_getScreenSharingStatus:I = 0x2f

.field static final TRANSACTION_getWifiDisplayBridgeStatus:I = 0x1f

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xc

.field static final TRANSACTION_hasContent:I = 0x33

.field static final TRANSACTION_isConnWithPinSupported:I = 0x26

.field static final TRANSACTION_isDongleRenameAvailable:I = 0x27

.field static final TRANSACTION_isKDDIServiceConnected:I = 0x21

.field static final TRANSACTION_isSinkAvailable:I = 0x24

.field static final TRANSACTION_isSourceAvailable:I = 0x25

.field static final TRANSACTION_isWfdEngineRunning:I = 0x20

.field static final TRANSACTION_isWifiDisplayBridgeAvailable:I = 0x1e

.field static final TRANSACTION_notifyEnterHomeSyncApp:I = 0x22

.field static final TRANSACTION_notifyExitHomeSyncApp:I = 0x23

.field static final TRANSACTION_pauseWifiDisplay:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x13

.field static final TRANSACTION_removeLastConnectedDLNADevice:I = 0x2e

.field static final TRANSACTION_renameDongle:I = 0x28

.field static final TRANSACTION_renameWifiDisplay:I = 0x8

.field static final TRANSACTION_requestColorTransform:I = 0xd

.field static final TRANSACTION_resizeVirtualDisplay:I = 0xf

.field static final TRANSACTION_restartWifiDisplay:I = 0x1d

.field static final TRANSACTION_resumeWifiDisplay:I = 0xb

.field static final TRANSACTION_scanWifiDisplays:I = 0x14

.field static final TRANSACTION_setCurrentDisplayIdMagnifier:I = 0x37

.field static final TRANSACTION_setMagnificationSettings:I = 0x36

.field static final TRANSACTION_setMagnificationSpec:I = 0x35

.field static final TRANSACTION_setParameter:I = 0x2a

.field static final TRANSACTION_setScanningChannel:I = 0x29

.field static final TRANSACTION_setScreenSharingStatus:I = 0x30

.field static final TRANSACTION_setVirtualDisplayFixedOrientation:I = 0x11

.field static final TRANSACTION_setVirtualDisplayMirroringDisplay:I = 0x10

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x12

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopScanWifiDisplays:I = 0x15

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/display/IDisplayManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 655
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v10

    .line 52
    .local v10, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v10, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 64
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Landroid/view/DisplayInfo;
    :sswitch_2
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    move-result-object v10

    .line 66
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    .end local v10    # "_result":[I
    :sswitch_3
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :sswitch_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :sswitch_6
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 111
    :sswitch_8
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 122
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 138
    :sswitch_b
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 145
    :sswitch_c
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v10

    .line 147
    .local v10, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v10, :cond_1

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 159
    .end local v10    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :sswitch_d
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorTransform(II)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 170
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_e
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 174
    .local v1, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 176
    .local v2, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 182
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 184
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 186
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 193
    .local v8, "_arg7":Landroid/view/Surface;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg8":I
    move-object v0, p0

    .line 194
    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I

    move-result v10

    .line 195
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    .end local v8    # "_arg7":Landroid/view/Surface;
    .end local v9    # "_arg8":I
    .end local v10    # "_result":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "_arg7":Landroid/view/Surface;
    goto :goto_3

    .line 201
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":Landroid/media/projection/IMediaProjection;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/view/Surface;
    :sswitch_f
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 205
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 210
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 216
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_10
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 220
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayMirroringDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 227
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":I
    :sswitch_11
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 231
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 238
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":I
    :sswitch_12
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 242
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 248
    .local v2, "_arg1":Landroid/view/Surface;
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg1":Landroid/view/Surface;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/view/Surface;
    goto :goto_4

    .line 254
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":Landroid/view/Surface;
    :sswitch_13
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 257
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 263
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :sswitch_14
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->scanWifiDisplays()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 270
    :sswitch_15
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopScanWifiDisplays()V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 277
    :sswitch_16
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 286
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 297
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    .line 304
    .local v3, "_arg2":Z
    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithModeEx(ILjava/lang/String;Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 303
    .end local v3    # "_arg2":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 310
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 319
    .local v1, "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 316
    .end local v1    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "_arg1":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_6

    .line 326
    .end local v1    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_1a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->enableWifiDisplayEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 341
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 349
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 351
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    .local v7, "_arg6":Z
    :goto_7
    move-object v0, p0

    .line 356
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/IDisplayManager$Stub;->enableWifiDisplayEx2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 355
    .end local v7    # "_arg6":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 362
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :sswitch_1c
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disableWifiDisplay()V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 369
    :sswitch_1d
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->restartWifiDisplay()V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 376
    :sswitch_1e
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isWifiDisplayBridgeAvailable()Z

    move-result v10

    .line 378
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 379
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 384
    .end local v10    # "_result":Z
    :sswitch_1f
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayBridgeStatus()I

    move-result v10

    .line 386
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 392
    .end local v10    # "_result":I
    :sswitch_20
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isWfdEngineRunning()Z

    move-result v10

    .line 394
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v10, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 395
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 400
    .end local v10    # "_result":Z
    :sswitch_21
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isKDDIServiceConnected()Z

    move-result v10

    .line 402
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v10, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 403
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 408
    .end local v10    # "_result":Z
    :sswitch_22
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->notifyEnterHomeSyncApp()V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 415
    :sswitch_23
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->notifyExitHomeSyncApp()V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 422
    :sswitch_24
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isSinkAvailable()Z

    move-result v10

    .line 424
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v10, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 425
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 430
    .end local v10    # "_result":Z
    :sswitch_25
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isSourceAvailable()Z

    move-result v10

    .line 432
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v10, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 433
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 438
    .end local v10    # "_result":Z
    :sswitch_26
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v10

    .line 442
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v10, :cond_c

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 443
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 448
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_27
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isDongleRenameAvailable()Z

    move-result v10

    .line 450
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v10, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 451
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 456
    .end local v10    # "_result":Z
    :sswitch_28
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->renameDongle(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 465
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setScanningChannel(I)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 474
    .end local v1    # "_arg0":I
    :sswitch_2a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setParameter(IILjava/lang/String;)I

    move-result v10

    .line 482
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 488
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_2b
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 491
    .local v1, "_arg0":Z
    :goto_f
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v10

    .line 492
    .local v10, "_result":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v10, :cond_f

    .line 494
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 500
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":Landroid/hardware/display/WifiDisplay;
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 498
    .restart local v1    # "_arg0":Z
    .restart local v10    # "_result":Landroid/hardware/display/WifiDisplay;
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 504
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":Landroid/hardware/display/WifiDisplay;
    :sswitch_2c
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectForMirroringSwitching()V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 511
    :sswitch_2d
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v10

    .line 513
    .local v10, "_result":Landroid/hardware/display/DLNADevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v10, :cond_10

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/hardware/display/DLNADevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 521
    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 519
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 525
    .end local v10    # "_result":Landroid/hardware/display/DLNADevice;
    :sswitch_2e
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->removeLastConnectedDLNADevice()V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 532
    :sswitch_2f
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getScreenSharingStatus()I

    move-result v10

    .line 534
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 540
    .end local v10    # "_result":I
    :sswitch_30
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setScreenSharingStatus(I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 549
    .end local v1    # "_arg0":I
    :sswitch_31
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getActiveDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v10

    .line 551
    .local v10, "_result":Landroid/hardware/display/DLNADevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    if-eqz v10, :cond_11

    .line 553
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/hardware/display/DLNADevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 559
    :goto_12
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 557
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 563
    .end local v10    # "_result":Landroid/hardware/display/DLNADevice;
    :sswitch_32
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getActiveDLNAState()I

    move-result v10

    .line 565
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 571
    .end local v10    # "_result":I
    :sswitch_33
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->hasContent(I)Z

    move-result v10

    .line 575
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    if-eqz v10, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 576
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 581
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_34
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 584
    .local v1, "_arg0":Z
    :goto_14
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->enableOverlayMagnifier(Z)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 583
    .end local v1    # "_arg0":Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    .line 590
    :sswitch_35
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 593
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 598
    .local v1, "_arg0":Landroid/view/MagnificationSpec;
    :goto_15
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 596
    .end local v1    # "_arg0":Landroid/view/MagnificationSpec;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_15

    .line 604
    .end local v1    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_36
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 608
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 610
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 611
    .local v3, "_arg2":F
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSettings(IIF)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 617
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":F
    :sswitch_37
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 620
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setCurrentDisplayIdMagnifier(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 626
    .end local v1    # "_arg0":I
    :sswitch_38
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 632
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    .line 633
    .local v3, "_arg2":Z
    :goto_16
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfoEx(ILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;

    move-result-object v10

    .line 634
    .local v10, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    if-eqz v10, :cond_16

    .line 636
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 642
    :goto_17
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 632
    .end local v3    # "_arg2":Z
    .end local v10    # "_result":Landroid/view/DisplayInfo;
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 640
    .restart local v3    # "_arg2":Z
    .restart local v10    # "_result":Landroid/view/DisplayInfo;
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 646
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Z
    .end local v10    # "_result":Landroid/view/DisplayInfo;
    :sswitch_39
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 649
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIdOfDevice(I)I

    move-result v10

    .line 650
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 39
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
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
