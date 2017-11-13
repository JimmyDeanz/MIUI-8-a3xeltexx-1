.class public abstract Landroid/hardware/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintService"

.field static final TRANSACTION_addLockoutResetCallback:I = 0xf

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_getAuthenticatorId:I = 0xc

.field static final TRANSACTION_getEnrolledFingerprints:I = 0x7

.field static final TRANSACTION_hasEnrolledFingerprints:I = 0xb

.field static final TRANSACTION_isHardwareDetected:I = 0x8

.field static final TRANSACTION_postEnroll:I = 0xa

.field static final TRANSACTION_preEnroll:I = 0x9

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_rename:I = 0x6

.field static final TRANSACTION_request:I = 0xd

.field static final TRANSACTION_resetTimeout:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;
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
    const-string v1, "android.hardware.fingerprint.IFingerprintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 27
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 261
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 55
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 57
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 59
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 61
    .local v9, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 63
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 65
    .local v11, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .local v12, "_arg6":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v4, p0

    .line 71
    invoke-virtual/range {v4 .. v12}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v4, 0x1

    goto :goto_0

    .line 69
    .end local v12    # "_arg6":Landroid/os/Bundle;
    :cond_0
    const/4 v12, 0x0

    .restart local v12    # "_arg6":Landroid/os/Bundle;
    goto :goto_1

    .line 77
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":Ljava/lang/String;
    .end local v12    # "_arg6":Landroid/os/Bundle;
    :sswitch_2
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 81
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v4, 0x1

    goto :goto_0

    .line 88
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 92
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 94
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 96
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 98
    .restart local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 100
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .local v11, "_arg5":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v11

    .line 106
    invoke-virtual/range {v13 .. v19}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILandroid/os/Bundle;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 104
    .end local v11    # "_arg5":Landroid/os/Bundle;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "_arg5":Landroid/os/Bundle;
    goto :goto_2

    .line 112
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":[B
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":Landroid/os/Bundle;
    :sswitch_4
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 115
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 121
    .end local v5    # "_arg0":Landroid/os/IBinder;
    :sswitch_5
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 125
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 127
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 129
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 130
    .restart local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 136
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :sswitch_6
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 140
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 142
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename(IILjava/lang/String;)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 149
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 153
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 155
    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 157
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 161
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :sswitch_8
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 165
    .local v22, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 166
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v24

    .line 167
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v24, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 168
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 173
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg0":J
    .end local v24    # "_result":Z
    :sswitch_9
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 176
    .local v5, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v24

    .line 177
    .local v24, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 183
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v24    # "_result":J
    :sswitch_a
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 186
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->postEnroll(Landroid/os/IBinder;)I

    move-result v24

    .line 187
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 193
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v24    # "_result":I
    :sswitch_b
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 197
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 198
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints(ILjava/lang/String;)Z

    move-result v24

    .line 199
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v24, :cond_3

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 200
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 205
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_c
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v24

    .line 209
    .local v24, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 215
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":J
    :sswitch_d
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 219
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 221
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 223
    .local v8, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 224
    .local v21, "_arg3_length":I
    if-gez v21, :cond_4

    .line 225
    const/4 v9, 0x0

    .line 231
    .local v9, "_arg3":[B
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 233
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 235
    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v12

    .local v12, "_arg6":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    move-object/from16 v13, p0

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    .line 236
    invoke-virtual/range {v13 .. v20}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->request(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v24

    .line 237
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 240
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 228
    .end local v9    # "_arg3":[B
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v24    # "_result":I
    :cond_4
    move/from16 v0, v21

    new-array v9, v0, [B

    .restart local v9    # "_arg3":[B
    goto :goto_5

    .line 244
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":[B
    .end local v9    # "_arg3":[B
    .end local v21    # "_arg3_length":I
    :sswitch_e
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 247
    .local v5, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetTimeout([B)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 253
    .end local v5    # "_arg0":[B
    :sswitch_f
    const-string v4, "android.hardware.fingerprint.IFingerprintService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    move-result-object v5

    .line 256
    .local v5, "_arg0":Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v4, 0x1

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
