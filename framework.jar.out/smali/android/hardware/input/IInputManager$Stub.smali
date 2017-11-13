.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xd

.field static final TRANSACTION_addOrRemoveVirtualGamePadDevice:I = 0x29

.field static final TRANSACTION_cancelVibrate:I = 0x13

.field static final TRANSACTION_coverEventFinished:I = 0x1a

.field static final TRANSACTION_enablePatialScreen:I = 0x25

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xa

.field static final TRANSACTION_getInboundQueueLength:I = 0x19

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0x9

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getScanCodeState:I = 0x1b

.field static final TRANSACTION_getSmartHallFlipState:I = 0x26

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isInTabletMode:I = 0x10

.field static final TRANSACTION_monitorInput:I = 0x1c

.field static final TRANSACTION_registerHoveringSpenCustomIcon:I = 0x1d

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0xf

.field static final TRANSACTION_registerMouseCustomIcon:I = 0x21

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x11

.field static final TRANSACTION_reloadMousePointerIcon:I = 0x23

.field static final TRANSACTION_reloadMousePointerIconForBitmap:I = 0x24

.field static final TRANSACTION_reloadPointerIcon:I = 0x1f

.field static final TRANSACTION_reloadPointerIconForBitmap:I = 0x20

.field static final TRANSACTION_removeHoveringSpenCustomIcon:I = 0x1e

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_removeMouseCustomIcon:I = 0x22

.field static final TRANSACTION_setCoverVerify:I = 0x18

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_setCustomHoverIcon:I = 0x15

.field static final TRANSACTION_setEnableTSP:I = 0x2a

.field static final TRANSACTION_setFlipCoverTouchEnabled:I = 0x17

.field static final TRANSACTION_setLedState:I = 0x14

.field static final TRANSACTION_setMonitorChannelFilter:I = 0x28

.field static final TRANSACTION_setStartedShutdown:I = 0x16

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_setWakeKeyDynamically:I = 0x27

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/hardware/input/IInputManager;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 627
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 44
    :sswitch_0
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 53
    .local v7, "_result":Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v7, :cond_0

    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v7, p3, v8}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v7

    .line 67
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 73
    .end local v7    # "_result":[I
    :sswitch_3
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 81
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 82
    .local v6, "_arg3_length":I
    if-gez v6, :cond_2

    .line 83
    const/4 v4, 0x0

    .line 88
    .local v4, "_arg3":[Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v7

    .line 89
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    .line 86
    .end local v4    # "_arg3":[Z
    .end local v7    # "_result":Z
    :cond_2
    new-array v4, v6, [Z

    .restart local v4    # "_arg3":[Z
    goto :goto_1

    .line 96
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Z
    .end local v6    # "_arg3_length":I
    :sswitch_4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v1    # "_arg0":I
    :sswitch_5
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 108
    sget-object v9, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 114
    .local v1, "_arg0":Landroid/view/InputEvent;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v7

    .line 116
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v7, :cond_3

    move v0, v8

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/InputEvent;
    goto :goto_2

    .line 122
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    :sswitch_6
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v7

    .line 128
    .local v7, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v7, :cond_5

    .line 130
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v7, p3, v8}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 134
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_7
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    sget-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/TouchCalibration;

    .line 152
    .local v3, "_arg2":Landroid/hardware/input/TouchCalibration;
    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    .end local v3    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_3

    .line 158
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_8
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 160
    .local v7, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 166
    .end local v7    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_9
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 170
    .local v7, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v7, :cond_7

    .line 172
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v7, p3, v8}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 176
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_a
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 185
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 190
    .local v1, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v7    # "_result":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_4

    .line 197
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_b
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 206
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_5

    .line 213
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_c
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 221
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v7    # "_result":[Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_6

    .line 228
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 237
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_7

    .line 244
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_e
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 253
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_8

    .line 260
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v1

    .line 263
    .local v1, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 269
    .end local v1    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_10
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v7

    .line 271
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v7    # "_result":I
    :sswitch_11
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v1

    .line 280
    .local v1, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    .end local v1    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :sswitch_12
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 292
    .local v2, "_arg1":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 295
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 301
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[J
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :sswitch_13
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 305
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 306
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 312
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_14
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v1, v8

    .line 315
    .local v1, "_arg0":Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setLedState(Z)I

    move-result v7

    .line 316
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_d
    move v1, v0

    .line 314
    goto :goto_9

    .line 322
    :sswitch_15
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 325
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 331
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setCustomHoverIcon(Landroid/graphics/Bitmap;II)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 328
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_a

    .line 340
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_16
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v1, v8

    .line 343
    .local v1, "_arg0":Z
    :goto_b
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_f
    move v1, v0

    .line 342
    goto :goto_b

    .line 349
    :sswitch_17
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    move v1, v8

    .line 352
    .restart local v1    # "_arg0":Z
    :goto_c
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setFlipCoverTouchEnabled(Z)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_10
    move v1, v0

    .line 351
    goto :goto_c

    .line 358
    :sswitch_18
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setCoverVerify(I)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 367
    .end local v1    # "_arg0":I
    :sswitch_19
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInboundQueueLength()I

    move-result v7

    .line 369
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v7    # "_result":I
    :sswitch_1a
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->coverEventFinished()V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 382
    :sswitch_1b
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 389
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getScanCodeState(III)I

    move-result v7

    .line 390
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 396
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v7    # "_result":I
    :sswitch_1c
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v7

    .line 400
    .local v7, "_result":Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v7, :cond_11

    .line 402
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    invoke-virtual {v7, p3, v8}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 406
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 412
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Landroid/view/InputChannel;
    :sswitch_1d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 415
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 420
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_d
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 421
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 418
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v7    # "_result":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_d

    .line 427
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_1e
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 430
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeHoveringSpenCustomIcon(I)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 436
    .end local v1    # "_arg0":I
    :sswitch_1f
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 440
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 445
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 451
    .local v4, "_arg3":Landroid/graphics/Point;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 452
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 448
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_e

    .line 458
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_20
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 465
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 471
    .local v3, "_arg2":Landroid/graphics/Bitmap;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 472
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 478
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 479
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v7

    .line 480
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 468
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":I
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_f

    .line 475
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_10

    .line 486
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_21
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 489
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 494
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 495
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v7    # "_result":I
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_11

    .line 501
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_22
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeMouseCustomIcon(I)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 510
    .end local v1    # "_arg0":I
    :sswitch_23
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 514
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 518
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 519
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 525
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 526
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 522
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_12

    .line 532
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_24
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 539
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 545
    .local v3, "_arg2":Landroid/graphics/Bitmap;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 546
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 552
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 553
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v7

    .line 554
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 542
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":I
    :cond_18
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_13

    .line 549
    :cond_19
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_14

    .line 560
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_25
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a

    move v1, v8

    .line 563
    .local v1, "_arg0":Z
    :goto_15
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->enablePatialScreen(Z)V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_1a
    move v1, v0

    .line 562
    goto :goto_15

    .line 569
    :sswitch_26
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getSmartHallFlipState()I

    move-result v7

    .line 571
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 577
    .end local v7    # "_result":I
    :sswitch_27
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1b

    move v2, v8

    .line 583
    .local v2, "_arg1":Z
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_1b
    move v2, v0

    .line 581
    goto :goto_16

    .line 590
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 593
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    .line 599
    .local v1, "_arg0":Landroid/view/InputChannel;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 600
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 596
    .end local v1    # "_arg0":Landroid/view/InputChannel;
    .end local v2    # "_arg1":I
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/InputChannel;
    goto :goto_17

    .line 606
    .end local v1    # "_arg0":Landroid/view/InputChannel;
    :sswitch_29
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    move v1, v8

    .line 609
    .local v1, "_arg0":Z
    :goto_18
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->addOrRemoveVirtualGamePadDevice(Z)I

    move-result v7

    .line 610
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_1d
    move v1, v0

    .line 608
    goto :goto_18

    .line 616
    :sswitch_2a
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 620
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1f

    move v2, v8

    .line 621
    .local v2, "_arg1":Z
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setEnableTSP(IZ)Z

    move-result v7

    .line 622
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    if-eqz v7, :cond_1e

    move v0, v8

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :cond_1f
    move v2, v0

    .line 620
    goto :goto_19

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
