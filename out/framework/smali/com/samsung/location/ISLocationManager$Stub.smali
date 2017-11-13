.class public abstract Lcom/samsung/location/ISLocationManager$Stub;
.super Landroid/os/Binder;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/ISLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.location.ISLocationManager"

.field static final TRANSACTION_addGeofence:I = 0x5

.field static final TRANSACTION_checkPassiveLocation:I = 0x14

.field static final TRANSACTION_removeCurrentLocation:I = 0x13

.field static final TRANSACTION_removeGeofence:I = 0x8

.field static final TRANSACTION_removeLocation:I = 0x10

.field static final TRANSACTION_removeSingleLocation:I = 0x11

.field static final TRANSACTION_reportCellGeofenceDetected:I = 0x1b

.field static final TRANSACTION_reportCellGeofenceRequestFail:I = 0x1c

.field static final TRANSACTION_reportFlpHardwareLocation:I = 0x1d

.field static final TRANSACTION_reportGpsGeofenceAddStatus:I = 0x17

.field static final TRANSACTION_reportGpsGeofencePauseStatus:I = 0x19

.field static final TRANSACTION_reportGpsGeofenceRemoveStatus:I = 0x18

.field static final TRANSACTION_reportGpsGeofenceResumeStatus:I = 0x1a

.field static final TRANSACTION_reportGpsGeofenceStatus:I = 0x16

.field static final TRANSACTION_reportGpsGeofenceTransition:I = 0x15

.field static final TRANSACTION_requestBatchOfLocations:I = 0xb

.field static final TRANSACTION_requestCurrentLocation:I = 0x12

.field static final TRANSACTION_requestLocation:I = 0xe

.field static final TRANSACTION_requestLocationToPoi:I = 0xf

.field static final TRANSACTION_requestSingleLocation:I = 0xd

.field static final TRANSACTION_setFusedLocationHardware:I = 0x1

.field static final TRANSACTION_setGeofenceCellInterface:I = 0x3

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x2

.field static final TRANSACTION_startGeofence:I = 0x6

.field static final TRANSACTION_startLocationBatching:I = 0x9

.field static final TRANSACTION_stopGeofence:I = 0x7

.field static final TRANSACTION_stopLocationBatching:I = 0xa

.field static final TRANSACTION_syncGeofence:I = 0x4

.field static final TRANSACTION_updateBatchingOptions:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.location.ISLocationManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/location/ISLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;
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
    const-string v1, "com.samsung.location.ISLocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/location/ISLocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/location/ISLocationManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/samsung/location/ISLocationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/location/ISLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 26
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 425
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IFusedLocationHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v3

    .line 55
    .local v3, "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->setFusedLocationHardware(Landroid/hardware/location/IFusedLocationHardware;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    :sswitch_2
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v3

    .line 64
    .local v3, "_arg0":Landroid/location/IGpsGeofenceHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :sswitch_3
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationCellInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationCellInterface;

    move-result-object v3

    .line 73
    .local v3, "_arg0":Lcom/samsung/location/ISLocationCellInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->setGeofenceCellInterface(Lcom/samsung/location/ISLocationCellInterface;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "_arg0":Lcom/samsung/location/ISLocationCellInterface;
    :sswitch_4
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 82
    .local v3, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->syncGeofence([I)I

    move-result v8

    .line 83
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v2, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "_arg0":[I
    .end local v8    # "_result":I
    :sswitch_5
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/samsung/location/SLocationParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/location/SLocationParameter;

    .line 97
    .local v3, "_arg0":Lcom/samsung/location/SLocationParameter;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->addGeofence(Lcom/samsung/location/SLocationParameter;)I

    move-result v8

    .line 98
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 95
    .end local v3    # "_arg0":Lcom/samsung/location/SLocationParameter;
    .end local v8    # "_result":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/samsung/location/SLocationParameter;
    goto :goto_1

    .line 104
    .end local v3    # "_arg0":Lcom/samsung/location/SLocationParameter;
    :sswitch_6
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 114
    .local v4, "_arg1":Landroid/app/PendingIntent;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->startGeofence(ILandroid/app/PendingIntent;)I

    move-result v8

    .line 115
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 112
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_result":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    .line 121
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_7
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 131
    .restart local v4    # "_arg1":Landroid/app/PendingIntent;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v8

    .line 132
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 129
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_result":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3

    .line 138
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->removeGeofence(I)I

    move-result v8

    .line 142
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 148
    .end local v3    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_9
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationListener;

    move-result-object v4

    .line 153
    .local v4, "_arg1":Lcom/samsung/location/ISLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v8

    .line 154
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 160
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/samsung/location/ISLocationListener;
    .end local v8    # "_result":I
    :sswitch_a
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->stopLocationBatching(I)I

    move-result v8

    .line 164
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 170
    .end local v3    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_b
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/location/ISLocationManager$Stub;->requestBatchOfLocations()I

    move-result v8

    .line 172
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 178
    .end local v8    # "_result":I
    :sswitch_c
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->updateBatchingOptions(II)I

    move-result v8

    .line 184
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 190
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_d
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    .line 200
    .local v6, "_arg3":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .local v7, "_arg4":Landroid/app/PendingIntent;
    :goto_5
    move-object/from16 v2, p0

    .line 206
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/location/ISLocationManager$Stub;->requestSingleLocation(IIIZLandroid/app/PendingIntent;)I

    move-result v8

    .line 207
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 198
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_result":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 204
    .restart local v6    # "_arg3":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_5

    .line 213
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_e
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    .line 217
    .local v3, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    .line 219
    .local v4, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationListener;

    move-result-object v5

    .line 220
    .local v5, "_arg2":Lcom/samsung/location/ISLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->requestLocation(ZZLcom/samsung/location/ISLocationListener;)I

    move-result v8

    .line 221
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Lcom/samsung/location/ISLocationListener;
    .end local v8    # "_result":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 217
    .restart local v3    # "_arg0":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    .line 227
    .end local v3    # "_arg0":Z
    :sswitch_f
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v3

    .line 231
    .local v3, "_arg0":[D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v4

    .line 233
    .local v4, "_arg1":[D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 234
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 239
    .local v5, "_arg2":Landroid/app/PendingIntent;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I

    move-result v8

    .line 240
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 237
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    .end local v8    # "_result":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_8

    .line 246
    .end local v3    # "_arg0":[D
    .end local v4    # "_arg1":[D
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_10
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationListener;

    move-result-object v3

    .line 249
    .local v3, "_arg0":Lcom/samsung/location/ISLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->removeLocation(Lcom/samsung/location/ISLocationListener;)I

    move-result v8

    .line 250
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 256
    .end local v3    # "_arg0":Lcom/samsung/location/ISLocationListener;
    .end local v8    # "_result":I
    :sswitch_11
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 259
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 264
    .local v3, "_arg0":Landroid/app/PendingIntent;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->removeSingleLocation(Landroid/app/PendingIntent;)I

    move-result v8

    .line 265
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 262
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .end local v8    # "_result":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_9

    .line 271
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_12
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISCurrentLocListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISCurrentLocListener;

    move-result-object v3

    .line 274
    .local v3, "_arg0":Lcom/samsung/location/ISCurrentLocListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->requestCurrentLocation(Lcom/samsung/location/ISCurrentLocListener;)I

    move-result v8

    .line 275
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 281
    .end local v3    # "_arg0":Lcom/samsung/location/ISCurrentLocListener;
    .end local v8    # "_result":I
    :sswitch_13
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 284
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->removeCurrentLocation(I)I

    move-result v8

    .line 285
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 291
    .end local v3    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_14
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/location/ISLocationManager$Stub;->checkPassiveLocation()Z

    move-result v8

    .line 293
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v8, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 294
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 299
    .end local v8    # "_result":Z
    :sswitch_15
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 307
    .local v12, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    .line 309
    .local v14, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 311
    .local v16, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 313
    .local v18, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 315
    .local v19, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 317
    .local v20, "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 319
    .local v21, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 321
    .local v23, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .local v24, "_arg10":J
    move-object/from16 v9, p0

    move v10, v3

    move v11, v4

    .line 322
    invoke-virtual/range {v9 .. v25}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 328
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v12    # "_arg2":D
    .end local v14    # "_arg3":D
    .end local v16    # "_arg4":D
    .end local v18    # "_arg5":F
    .end local v19    # "_arg6":F
    .end local v20    # "_arg7":F
    .end local v21    # "_arg8":J
    .end local v23    # "_arg9":I
    .end local v24    # "_arg10":J
    :sswitch_16
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 334
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 336
    .restart local v12    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    .line 338
    .restart local v14    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 340
    .restart local v16    # "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 342
    .restart local v18    # "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 344
    .restart local v19    # "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 346
    .restart local v20    # "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .restart local v21    # "_arg8":J
    move-object/from16 v9, p0

    move v10, v3

    move v11, v4

    .line 347
    invoke-virtual/range {v9 .. v22}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceStatus(IIDDDFFFJ)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 353
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v12    # "_arg2":D
    .end local v14    # "_arg3":D
    .end local v16    # "_arg4":D
    .end local v18    # "_arg5":F
    .end local v19    # "_arg6":F
    .end local v20    # "_arg7":F
    .end local v21    # "_arg8":J
    :sswitch_17
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 358
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceAddStatus(II)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 364
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_18
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceRemoveStatus(II)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 375
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_19
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 379
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 380
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofencePauseStatus(II)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 386
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_1a
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 390
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 391
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceResumeStatus(II)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 397
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_1b
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 401
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 402
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportCellGeofenceDetected(II)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 408
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_1c
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 411
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->reportCellGeofenceRequestFail(I)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 417
    .end local v3    # "_arg0":I
    :sswitch_1d
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/location/Location;

    .line 420
    .local v3, "_arg0":[Landroid/location/Location;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->reportFlpHardwareLocation([Landroid/location/Location;)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
