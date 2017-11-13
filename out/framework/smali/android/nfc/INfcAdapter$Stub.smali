.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_NetworkResetAtt:I = 0x38

.field static final TRANSACTION_SetWcControl:I = 0x35

.field static final TRANSACTION_StartLedCover:I = 0x33

.field static final TRANSACTION_StopLedCover:I = 0x34

.field static final TRANSACTION_TransceiveLedCover:I = 0x32

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x24

.field static final TRANSACTION_changeDiscoveryTech:I = 0x16

.field static final TRANSACTION_changeRoutingTable:I = 0x17

.field static final TRANSACTION_closeSecNdefService:I = 0x1c

.field static final TRANSACTION_createSecNdefService:I = 0x1b

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_disableFilterCondition:I = 0x23

.field static final TRANSACTION_disableNdefPush:I = 0x8

.field static final TRANSACTION_dispatch:I = 0x13

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableDisableSeTestMode:I = 0x27

.field static final TRANSACTION_enableFilterCondition:I = 0x22

.field static final TRANSACTION_enableNdefPush:I = 0x7

.field static final TRANSACTION_enableSecNdef:I = 0x1f

.field static final TRANSACTION_getDefaultRoutingDestination:I = 0x29

.field static final TRANSACTION_getIdm:I = 0x37

.field static final TRANSACTION_getListenMode:I = 0x31

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getRwP2pState:I = 0x18

.field static final TRANSACTION_getSeSupportedTech:I = 0x36

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_invokeBeam:I = 0x11

.field static final TRANSACTION_invokeBeamInternal:I = 0x12

.field static final TRANSACTION_isNdefPushEnabled:I = 0x9

.field static final TRANSACTION_isSecNdefEnabled:I = 0x20

.field static final TRANSACTION_isSimLocked:I = 0xc

.field static final TRANSACTION_isTrustedPkg:I = 0x2c

.field static final TRANSACTION_pausePolling:I = 0xa

.field static final TRANSACTION_prepareSwitchedOffState:I = 0x1a

.field static final TRANSACTION_readerDisable:I = 0x2a

.field static final TRANSACTION_readerEnable:I = 0x2b

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x25

.field static final TRANSACTION_resumePolling:I = 0xb

.field static final TRANSACTION_sendSecDefaultNdefMsg:I = 0x1e

.field static final TRANSACTION_sendSecNdefMsg:I = 0x1d

.field static final TRANSACTION_setAppCallback:I = 0xf

.field static final TRANSACTION_setDefaultRoutingDestination:I = 0x28

.field static final TRANSACTION_setFilterList:I = 0x21

.field static final TRANSACTION_setForegroundDispatch:I = 0xe

.field static final TRANSACTION_setLedCoverCallback:I = 0x10

.field static final TRANSACTION_setListenMode:I = 0x30

.field static final TRANSACTION_setP2pModes:I = 0x15

.field static final TRANSACTION_setReaderMode:I = 0x14

.field static final TRANSACTION_setRwP2pMode:I = 0x19

.field static final TRANSACTION_setSimLocked:I = 0xd

.field static final TRANSACTION_startCoverAuth:I = 0x2d

.field static final TRANSACTION_stopCoverAuth:I = 0x2f

.field static final TRANSACTION_transceiveAuthData:I = 0x2e

.field static final TRANSACTION_verifyNfcPermission:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/nfc/INfcAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 612
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v13

    .line 52
    .local v13, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 58
    .end local v13    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v13

    .line 60
    .local v13, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 66
    .end local v13    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v13

    .line 70
    .local v13, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 76
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_4
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v13

    .line 78
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    .end local v13    # "_result":I
    :sswitch_5
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 87
    .local v2, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v13

    .line 88
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 86
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 89
    .restart local v2    # "_arg0":Z
    .restart local v13    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 94
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :sswitch_6
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v13

    .line 96
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v13, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 97
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 102
    .end local v13    # "_result":Z
    :sswitch_7
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v13

    .line 104
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v13, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 105
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 110
    .end local v13    # "_result":Z
    :sswitch_8
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v13

    .line 112
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v13, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 113
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 118
    .end local v13    # "_result":Z
    :sswitch_9
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v13

    .line 120
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 121
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 126
    .end local v13    # "_result":Z
    :sswitch_a
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 135
    .end local v2    # "_arg0":I
    :sswitch_b
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 142
    :sswitch_c
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isSimLocked()Z

    move-result v13

    .line 144
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 145
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 150
    .end local v13    # "_result":Z
    :sswitch_d
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    .line 153
    .local v2, "_arg0":Z
    :goto_b
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setSimLocked(Z)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 152
    .end local v2    # "_arg0":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 159
    :sswitch_e
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 162
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 168
    .local v2, "_arg0":Landroid/app/PendingIntent;
    :goto_c
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 170
    .local v3, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 171
    sget-object v1, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/TechListParcel;

    .line 176
    .local v4, "_arg2":Landroid/nfc/TechListParcel;
    :goto_d
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 165
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":[Landroid/content/IntentFilter;
    .end local v4    # "_arg2":Landroid/nfc/TechListParcel;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_c

    .line 174
    .restart local v3    # "_arg1":[Landroid/content/IntentFilter;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_d

    .line 182
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":[Landroid/content/IntentFilter;
    .end local v4    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_f
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 191
    .end local v2    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_10
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    .line 194
    .restart local v2    # "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setLedCoverCallback(Landroid/nfc/IAppCallback;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_11
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    .line 202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 206
    :sswitch_12
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 209
    sget-object v1, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/BeamShareData;

    .line 214
    .local v2, "_arg0":Landroid/nfc/BeamShareData;
    :goto_e
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    .line 215
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 212
    .end local v2    # "_arg0":Landroid/nfc/BeamShareData;
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_e

    .line 219
    .end local v2    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_13
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 222
    sget-object v1, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 227
    .local v2, "_arg0":Landroid/nfc/Tag;
    :goto_f
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 225
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/nfc/Tag;
    goto :goto_f

    .line 233
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    :sswitch_14
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 237
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v3

    .line 239
    .local v3, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 242
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 247
    .local v5, "_arg3":Landroid/os/Bundle;
    :goto_10
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 245
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/os/Bundle;
    goto :goto_10

    .line 253
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_15
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_16
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 268
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->changeDiscoveryTech(Landroid/os/IBinder;II)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_17
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 281
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 283
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "_arg3":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object v1, p0

    .line 288
    invoke-virtual/range {v1 .. v6}, Landroid/nfc/INfcAdapter$Stub;->changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 294
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_18
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getRwP2pState()I

    move-result v13

    .line 296
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 302
    .end local v13    # "_result":I
    :sswitch_19
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    .line 305
    .local v2, "_arg0":Z
    :goto_11
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setRwP2pMode(Z)Z

    move-result v13

    .line 306
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v13, :cond_11

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 304
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 307
    .restart local v2    # "_arg0":Z
    .restart local v13    # "_result":Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_12

    .line 312
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :sswitch_1a
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->prepareSwitchedOffState()V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 319
    :sswitch_1b
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 325
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 329
    .local v5, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .local v12, "_arg4":[B
    move-object v7, p0

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 330
    invoke-virtual/range {v7 .. v12}, Landroid/nfc/INfcAdapter$Stub;->createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I

    move-result v13

    .line 331
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 337
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[B
    .end local v12    # "_arg4":[B
    .end local v13    # "_result":I
    :sswitch_1c
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->closeSecNdefService(I)I

    move-result v13

    .line 341
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 347
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_1d
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 352
    sget-object v1, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 357
    .local v3, "_arg1":Landroid/nfc/NdefMessage;
    :goto_13
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->sendSecNdefMsg(ILandroid/nfc/NdefMessage;)I

    move-result v13

    .line 358
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 355
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v13    # "_result":I
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/nfc/NdefMessage;
    goto :goto_13

    .line 364
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    :sswitch_1e
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 367
    sget-object v1, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 372
    .local v2, "_arg0":Landroid/nfc/NdefMessage;
    :goto_14
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->sendSecDefaultNdefMsg(Landroid/nfc/NdefMessage;)I

    move-result v13

    .line 373
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 370
    .end local v2    # "_arg0":Landroid/nfc/NdefMessage;
    .end local v13    # "_result":I
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/nfc/NdefMessage;
    goto :goto_14

    .line 379
    .end local v2    # "_arg0":Landroid/nfc/NdefMessage;
    :sswitch_1f
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    .line 382
    .local v2, "_arg0":Z
    :goto_15
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->enableSecNdef(Z)Z

    move-result v13

    .line 383
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v13, :cond_15

    const/4 v1, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 381
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 384
    .restart local v2    # "_arg0":Z
    .restart local v13    # "_result":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_16

    .line 389
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":Z
    :sswitch_20
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isSecNdefEnabled()Z

    move-result v13

    .line 391
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v13, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 392
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 397
    .end local v13    # "_result":Z
    :sswitch_21
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 400
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setFilterList([B)Z

    move-result v13

    .line 401
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v13, :cond_17

    const/4 v1, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 402
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 407
    .end local v2    # "_arg0":[B
    .end local v13    # "_result":Z
    :sswitch_22
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 410
    .local v2, "_arg0":B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->enableFilterCondition(B)Z

    move-result v13

    .line 411
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v13, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 412
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 417
    .end local v2    # "_arg0":B
    .end local v13    # "_result":Z
    :sswitch_23
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 420
    .restart local v2    # "_arg0":B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->disableFilterCondition(B)Z

    move-result v13

    .line 421
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v13, :cond_19

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 422
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 427
    .end local v2    # "_arg0":B
    .end local v13    # "_result":Z
    :sswitch_24
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 431
    .local v2, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 432
    .local v3, "_arg1":[I
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 438
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v3    # "_arg1":[I
    :sswitch_25
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 441
    .restart local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 447
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_26
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 454
    :sswitch_27
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v3, 0x1

    .line 459
    .local v3, "_arg1":Z
    :goto_1b
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->enableDisableSeTestMode(Ljava/lang/String;Z)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 458
    .end local v3    # "_arg1":Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 465
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 468
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setDefaultRoutingDestination(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 474
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v13

    .line 476
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 482
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerDisable()Z

    move-result v13

    .line 484
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v13, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 485
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 490
    .end local v13    # "_result":Z
    :sswitch_2b
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerEnable()Z

    move-result v13

    .line 492
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v13, :cond_1c

    const/4 v1, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 493
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 498
    .end local v13    # "_result":Z
    :sswitch_2c
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 502
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 504
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    if-eqz v13, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 505
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 510
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_2d
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->startCoverAuth()[B

    move-result-object v13

    .line 512
    .local v13, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 514
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 518
    .end local v13    # "_result":[B
    :sswitch_2e
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 521
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->transceiveAuthData([B)[B

    move-result-object v13

    .line 522
    .restart local v13    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 524
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 528
    .end local v2    # "_arg0":[B
    .end local v13    # "_result":[B
    :sswitch_2f
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->stopCoverAuth()Z

    move-result v13

    .line 530
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v13, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 531
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 536
    .end local v13    # "_result":Z
    :sswitch_30
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setListenMode(I)I

    move-result v13

    .line 540
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 546
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_31
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getListenMode()I

    move-result v13

    .line 548
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 554
    .end local v13    # "_result":I
    :sswitch_32
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 557
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->TransceiveLedCover([B)[B

    move-result-object v13

    .line 558
    .local v13, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 560
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 564
    .end local v2    # "_arg0":[B
    .end local v13    # "_result":[B
    :sswitch_33
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->StartLedCover()[B

    move-result-object v13

    .line 566
    .restart local v13    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 568
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 572
    .end local v13    # "_result":[B
    :sswitch_34
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->StopLedCover()Z

    move-result v13

    .line 574
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v13, :cond_1f

    const/4 v1, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 575
    :cond_1f
    const/4 v1, 0x0

    goto :goto_20

    .line 580
    .end local v13    # "_result":Z
    :sswitch_35
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 583
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->SetWcControl(I)Z

    move-result v13

    .line 584
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v13, :cond_20

    const/4 v1, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 585
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 590
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_36
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSeSupportedTech()I

    move-result v13

    .line 592
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 598
    .end local v13    # "_result":I
    :sswitch_37
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getIdm()Ljava/lang/String;

    move-result-object v13

    .line 600
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 606
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v1, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->NetworkResetAtt()V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
.field static final TRANSACTION_getSeRouting:I = 0x17
.field static final TRANSACTION_setSeRouting:I = 0x16
