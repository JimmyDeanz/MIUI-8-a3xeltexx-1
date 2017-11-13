.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x4

.field static final TRANSACTION_getMagnitude:I = 0xc

.field static final TRANSACTION_getMaxMagnitude:I = 0xb

.field static final TRANSACTION_getMotorType:I = 0xd

.field static final TRANSACTION_hasVibrator:I = 0x1

.field static final TRANSACTION_isEnableIntensity:I = 0x5

.field static final TRANSACTION_readFromFile:I = 0xf

.field static final TRANSACTION_resetMagnitude:I = 0xa

.field static final TRANSACTION_setMagnitude:I = 0x9

.field static final TRANSACTION_vibrate:I = 0x2

.field static final TRANSACTION_vibrateCommonPatternMagnitude:I = 0x8

.field static final TRANSACTION_vibrateMagnitude:I = 0x6

.field static final TRANSACTION_vibratePattern:I = 0x3

.field static final TRANSACTION_vibratePatternMagnitude:I = 0x7

.field static final TRANSACTION_writeToFile:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
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
    const-string v1, "android.os.IVibratorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IVibratorService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IVibratorService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 22
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

    .line 233
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v5, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->hasVibrator()Z

    move-result v4

    .line 50
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v5, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 56
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 60
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 64
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 66
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .local v11, "_arg4":Landroid/os/IBinder;
    move-object/from16 v5, p0

    .line 67
    invoke-virtual/range {v5 .. v11}, Landroid/os/IVibratorService$Stub;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v5, 0x1

    goto :goto_0

    .line 73
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 77
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v8

    .line 81
    .local v8, "_arg2":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 83
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 85
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .local v18, "_arg5":Landroid/os/IBinder;
    move-object/from16 v12, p0

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v10

    move/from16 v17, v11

    .line 86
    invoke-virtual/range {v12 .. v18}, Landroid/os/IVibratorService$Stub;->vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v5, 0x1

    goto :goto_0

    .line 92
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":[J
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 95
    .local v6, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 101
    .end local v6    # "_arg0":Landroid/os/IBinder;
    :sswitch_5
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->isEnableIntensity()Z

    move-result v4

    .line 103
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 104
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 109
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 113
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 115
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 117
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 119
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 121
    .local v11, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg5":I
    move-object/from16 v5, p0

    move/from16 v12, v18

    .line 122
    invoke-virtual/range {v5 .. v12}, Landroid/os/IVibratorService$Stub;->vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;I)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 128
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v18    # "_arg5":I
    :sswitch_7
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v8

    .line 136
    .local v8, "_arg2":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 138
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 140
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 142
    .local v18, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v10

    move/from16 v17, v11

    .line 143
    invoke-virtual/range {v12 .. v19}, Landroid/os/IVibratorService$Stub;->vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 149
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":[J
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/IBinder;
    .end local v19    # "_arg6":I
    :sswitch_8
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 153
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 155
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 157
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 159
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 161
    .local v11, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 163
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg6":I
    move-object/from16 v12, p0

    move v13, v6

    move-object v14, v7

    move v15, v8

    move/from16 v16, v10

    move-object/from16 v17, v11

    .line 164
    invoke-virtual/range {v12 .. v19}, Landroid/os/IVibratorService$Stub;->vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;II)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 170
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Landroid/os/IBinder;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    :sswitch_9
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IVibratorService$Stub;->setMagnitude(I)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 179
    .end local v6    # "_arg0":I
    :sswitch_a
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->resetMagnitude()V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 186
    :sswitch_b
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->getMaxMagnitude()I

    move-result v4

    .line 188
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 194
    .end local v4    # "_result":I
    :sswitch_c
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IVibratorService$Stub;->getMagnitude(Ljava/lang/String;)I

    move-result v4

    .line 198
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 204
    .end local v4    # "_result":I
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->getMotorType()I

    move-result v4

    .line 206
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 212
    .end local v4    # "_result":I
    :sswitch_e
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 216
    .local v20, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 217
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v7}, Landroid/os/IVibratorService$Stub;->writeToFile(JI)Z

    move-result v4

    .line 218
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 219
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 224
    .end local v4    # "_result":Z
    .end local v7    # "_arg1":I
    .end local v20    # "_arg0":J
    :sswitch_f
    const-string v5, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 227
    .restart local v20    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/IVibratorService$Stub;->readFromFile(J)I

    move-result v4

    .line 228
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v5, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
