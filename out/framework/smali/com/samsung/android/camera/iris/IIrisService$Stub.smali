.class public abstract Lcom/samsung/android/camera/iris/IIrisService$Stub;
.super Landroid/os/Binder;
.source "IIrisService.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisService"

.field static final TRANSACTION_addLockoutResetCallback:I = 0x11

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_authenticatewithUI:I = 0x2

.field static final TRANSACTION_cancelAuthentication:I = 0x3

.field static final TRANSACTION_cancelEnrollment:I = 0x6

.field static final TRANSACTION_enroll:I = 0x4

.field static final TRANSACTION_enrollwithUI:I = 0x5

.field static final TRANSACTION_getAuthenticatorId:I = 0xe

.field static final TRANSACTION_getEnrolledIrises:I = 0x9

.field static final TRANSACTION_hasEnrolledIrises:I = 0xd

.field static final TRANSACTION_isHardwareDetected:I = 0xa

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0xb

.field static final TRANSACTION_remove:I = 0x7

.field static final TRANSACTION_rename:I = 0x8

.field static final TRANSACTION_request:I = 0xf

.field static final TRANSACTION_resetTimeout:I = 0x10

.field static final TRANSACTION_startIRCamera:I = 0x12

.field static final TRANSACTION_stopIRCamera:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.camera.iris.IIrisService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;
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
    const-string v1, "com.samsung.android.camera.iris.IIrisService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/camera/iris/IIrisService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 34
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

    .line 362
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 55
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 59
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 61
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 63
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 65
    .local v10, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 67
    .local v12, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v13

    .line 69
    .local v13, "_arg7":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 71
    .local v14, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .local v16, "_arg10":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v4, p0

    .line 79
    invoke-virtual/range {v4 .. v16}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->authenticate(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v4, 0x1

    goto :goto_0

    .line 77
    .end local v16    # "_arg10":Landroid/os/Bundle;
    :cond_0
    const/16 v16, 0x0

    .restart local v16    # "_arg10":Landroid/os/Bundle;
    goto :goto_1

    .line 85
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":J
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v14    # "_arg8":I
    .end local v15    # "_arg9":Ljava/lang/String;
    .end local v16    # "_arg10":Landroid/os/Bundle;
    :sswitch_2
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 89
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 91
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 93
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 95
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 97
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 99
    .restart local v10    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 101
    .restart local v12    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v13

    .line 103
    .restart local v13    # "_arg7":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 105
    .restart local v14    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 107
    .restart local v15    # "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .restart local v16    # "_arg10":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v4, p0

    .line 113
    invoke-virtual/range {v4 .. v16}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->authenticatewithUI(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 111
    .end local v16    # "_arg10":Landroid/os/Bundle;
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "_arg10":Landroid/os/Bundle;
    goto :goto_2

    .line 119
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":J
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v14    # "_arg8":I
    .end local v15    # "_arg9":Ljava/lang/String;
    .end local v16    # "_arg10":Landroid/os/Bundle;
    :sswitch_3
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 123
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 130
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 134
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 136
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 138
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v8

    .line 140
    .local v8, "_arg3":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 142
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .local v10, "_arg5":Landroid/os/Bundle;
    :goto_3
    move-object/from16 v4, p0

    .line 148
    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->enroll(Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 146
    .end local v10    # "_arg5":Landroid/os/Bundle;
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/os/Bundle;
    goto :goto_3

    .line 154
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/os/Bundle;
    :sswitch_5
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 158
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 160
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 162
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 164
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 166
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 168
    .local v10, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 170
    .restart local v12    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v13

    .line 172
    .restart local v13    # "_arg7":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 174
    .restart local v14    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    .local v15, "_arg9":Landroid/os/Bundle;
    :goto_4
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    move/from16 v24, v12

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    .line 180
    invoke-virtual/range {v17 .. v27}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->enrollwithUI(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 178
    .end local v15    # "_arg9":Landroid/os/Bundle;
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "_arg9":Landroid/os/Bundle;
    goto :goto_4

    .line 186
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":[B
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v14    # "_arg8":I
    .end local v15    # "_arg9":Landroid/os/Bundle;
    :sswitch_6
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 189
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 195
    .end local v5    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 199
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 201
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 203
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v8

    .line 204
    .local v8, "_arg3":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->remove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 210
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    :sswitch_8
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 214
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 216
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->rename(IILjava/lang/String;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 223
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_9
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 227
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v31

    .line 229
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 231
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 235
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    :sswitch_a
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 239
    .local v28, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 240
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2, v6}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v32

    .line 241
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v32, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 242
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 247
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg0":J
    .end local v32    # "_result":Z
    :sswitch_b
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 250
    .local v5, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v32

    .line 251
    .local v32, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    move-object/from16 v0, p3

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 257
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v32    # "_result":J
    :sswitch_c
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 260
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->postEnroll(Landroid/os/IBinder;)I

    move-result v32

    .line 261
    .local v32, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 267
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v32    # "_result":I
    :sswitch_d
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 271
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v32

    .line 273
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v32, :cond_5

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 274
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 279
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v32    # "_result":Z
    :sswitch_e
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v32

    .line 283
    .local v32, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 289
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":J
    :sswitch_f
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 293
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 295
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 297
    .local v7, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 298
    .local v30, "_arg3_length":I
    if-gez v30, :cond_6

    .line 299
    const/4 v8, 0x0

    .line 305
    .local v8, "_arg3":[B
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 307
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 309
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v12

    .local v12, "_arg6":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v24, v12

    .line 310
    invoke-virtual/range {v17 .. v24}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v32

    .line 311
    .local v32, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 314
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 302
    .end local v8    # "_arg3":[B
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg6":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v32    # "_result":I
    :cond_6
    move/from16 v0, v30

    new-array v8, v0, [B

    .restart local v8    # "_arg3":[B
    goto :goto_7

    .line 318
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":[B
    .end local v30    # "_arg3_length":I
    :sswitch_10
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 321
    .local v5, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->resetTimeout([B)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 327
    .end local v5    # "_arg0":[B
    :sswitch_11
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

    move-result-object v5

    .line 330
    .local v5, "_arg0":Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 336
    .end local v5    # "_arg0":Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;
    :sswitch_12
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 340
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 342
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v7

    .line 343
    .local v7, "_arg2":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->startIRCamera(Landroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;)Z

    move-result v32

    .line 344
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v32, :cond_7

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 345
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 350
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v32    # "_result":Z
    :sswitch_13
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 354
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 356
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v7

    .line 357
    .restart local v7    # "_arg2":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->stopIRCamera(Landroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
