.class public abstract Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverService.java"

# interfaces
.implements Lcom/broadcom/fm/fmreceiver/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.fm.fmreceiver.IFmReceiverService"

.field static final TRANSACTION_cleanupFmService:I = 0x21

.field static final TRANSACTION_estimateNoiseFloorLevel:I = 0x1a

.field static final TRANSACTION_getCurrentRssi:I = 0x7

.field static final TRANSACTION_getCurrentSNR:I = 0x8

.field static final TRANSACTION_getIsMute:I = 0x9

.field static final TRANSACTION_getMonoStereoMode:I = 0x5

.field static final TRANSACTION_getRadioIsOn:I = 0x4

.field static final TRANSACTION_getStatus:I = 0xd

.field static final TRANSACTION_getTunedFrequency:I = 0x6

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_muteAudio:I = 0xe

.field static final TRANSACTION_offFMService:I = 0x25

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_seekRdsStation:I = 0x11

.field static final TRANSACTION_seekStation:I = 0xf

.field static final TRANSACTION_seekStationAbort:I = 0x12

.field static final TRANSACTION_seekStationCombo:I = 0x10

.field static final TRANSACTION_setAudioMode:I = 0x15

.field static final TRANSACTION_setAudioPath:I = 0x16

.field static final TRANSACTION_setCOS:I = 0x1e

.field static final TRANSACTION_setDeemPhasis:I = 0x19

.field static final TRANSACTION_setFMIntenna:I = 0x20

.field static final TRANSACTION_setFMVolume:I = 0x1c

.field static final TRANSACTION_setFrequencyOffsetThreshold:I = 0x22

.field static final TRANSACTION_setLiveAudioPolling:I = 0x1b

.field static final TRANSACTION_setNoisePowerThreshold:I = 0x24

.field static final TRANSACTION_setPiEccMode:I = 0x14

.field static final TRANSACTION_setPilotPowerThreshold:I = 0x23

.field static final TRANSACTION_setRdsMode:I = 0x13

.field static final TRANSACTION_setRfMute:I = 0x1f

.field static final TRANSACTION_setSnrThreshold:I = 0x1d

.field static final TRANSACTION_setStepSize:I = 0x17

.field static final TRANSACTION_setWorldRegion:I = 0x18

.field static final TRANSACTION_tuneRadio:I = 0xc

.field static final TRANSACTION_turnOffRadio:I = 0xa

.field static final TRANSACTION_turnOnRadio:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->init()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v1

    .local v1, "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    :sswitch_3
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v1

    .restart local v1    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    :sswitch_4
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getRadioIsOn()Z

    move-result v10

    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local v10    # "_result":Z
    :sswitch_5
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getMonoStereoMode()I

    move-result v10

    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v10    # "_result":I
    :sswitch_6
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getTunedFrequency()I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v10    # "_result":I
    :sswitch_7
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getCurrentRssi()J

    move-result-wide v10

    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v10    # "_result":J
    :sswitch_8
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getCurrentSNR()J

    move-result-wide v10

    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v10    # "_result":J
    :sswitch_9
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getIsMute()Z

    move-result v10

    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .end local v10    # "_result":Z
    :sswitch_a
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->turnOffRadio(Z)I

    move-result v10

    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :sswitch_b
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    .local v2, "_arg1":[C
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->turnOnRadio(I[C)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeCharArray([C)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[C
    .end local v10    # "_result":I
    :sswitch_c
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->tuneRadio(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_d
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getStatus()I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v10    # "_result":I
    :sswitch_e
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->muteAudio(Z)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :sswitch_f
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStation(II)J

    move-result-wide v10

    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":J
    :sswitch_10
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x1

    .local v6, "_arg5":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg7":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStationCombo(IIIIIZII)J

    move-result-wide v10

    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v10    # "_result":J
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_11
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekRdsStation(IIII)J

    move-result-wide v10

    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":J
    :sswitch_12
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStationAbort()I

    move-result v10

    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v10    # "_result":I
    :sswitch_13
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setRdsMode(IIII)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_14
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setPiEccMode(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_15
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setAudioMode(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_16
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setAudioPath(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_17
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setStepSize(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_18
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setWorldRegion(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_19
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setDeemPhasis(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_1a
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->estimateNoiseFloorLevel(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_1b
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setLiveAudioPolling(ZI)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    :sswitch_1c
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFMVolume(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_1d
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setSnrThreshold(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_1e
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setCOS(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_1f
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setRfMute(Z)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    :sswitch_20
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .restart local v1    # "_arg0":Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFMIntenna(Z)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    :sswitch_21
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->cleanupFmService()I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v10    # "_result":I
    :sswitch_22
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFrequencyOffsetThreshold(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_23
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setPilotPowerThreshold(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_24
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setNoisePowerThreshold(I)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_25
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->offFMService()I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
