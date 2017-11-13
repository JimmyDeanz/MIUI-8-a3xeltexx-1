.class public abstract Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;
.super Landroid/os/Binder;
.source "IFingerprintManager.java"

# interfaces
.implements Lcom/samsung/android/fingerprint/IFingerprintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/IFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.fingerprint.IFingerprintManager"

.field static final TRANSACTION_cancel:I = 0x15

.field static final TRANSACTION_closeTransaction:I = 0x1d

.field static final TRANSACTION_enroll:I = 0x16

.field static final TRANSACTION_enrollForMultiUser:I = 0x17

.field static final TRANSACTION_getDaemonVersion:I = 0xb

.field static final TRANSACTION_getEnrollRepeatCount:I = 0x29

.field static final TRANSACTION_getEnrolledFingers:I = 0x2

.field static final TRANSACTION_getFingerprintIdByFinger:I = 0x28

.field static final TRANSACTION_getFingerprintIds:I = 0x27

.field static final TRANSACTION_getIndexName:I = 0x21

.field static final TRANSACTION_getLastImageQuality:I = 0x24

.field static final TRANSACTION_getLastImageQualityMessage:I = 0x23

.field static final TRANSACTION_getSensorInfo:I = 0xa

.field static final TRANSACTION_getUserIdList:I = 0xc

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_hasPendingCommand:I = 0x5

.field static final TRANSACTION_identify:I = 0x18

.field static final TRANSACTION_identifyForMultiUser:I = 0x19

.field static final TRANSACTION_identifyWithDialog:I = 0x1b

.field static final TRANSACTION_isEnrollSession:I = 0x26

.field static final TRANSACTION_isSensorReady:I = 0x1e

.field static final TRANSACTION_isSupportFingerprintIds:I = 0x2a

.field static final TRANSACTION_isVZWPermissionGranted:I = 0x25

.field static final TRANSACTION_notifyAlternativePasswordBegin:I = 0xf

.field static final TRANSACTION_notifyApplicationState:I = 0x12

.field static final TRANSACTION_notifyEnrollBegin:I = 0x6

.field static final TRANSACTION_notifyEnrollEnd:I = 0x7

.field static final TRANSACTION_openTransaction:I = 0x1c

.field static final TRANSACTION_pauseEnroll:I = 0x8

.field static final TRANSACTION_process:I = 0x20

.field static final TRANSACTION_processFIDO:I = 0x1f

.field static final TRANSACTION_registerClient:I = 0x13

.field static final TRANSACTION_removeAllEnrolledFingers:I = 0x4

.field static final TRANSACTION_removeEnrolledFinger:I = 0x3

.field static final TRANSACTION_request:I = 0xe

.field static final TRANSACTION_resumeEnroll:I = 0x9

.field static final TRANSACTION_setIndexName:I = 0x22

.field static final TRANSACTION_setPassword:I = 0x11

.field static final TRANSACTION_showIdentifyDialog:I = 0x1a

.field static final TRANSACTION_unregisterClient:I = 0x14

.field static final TRANSACTION_verifyPassword:I = 0x10

.field static final TRANSACTION_verifySensorState:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;
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
    const-string v1, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/fingerprint/IFingerprintManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 530
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getVersion()I

    move-result v6

    .line 50
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v6    # "_result":I
    :sswitch_2
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledFingers(Ljava/lang/String;)I

    move-result v6

    .line 60
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_3
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeEnrolledFinger(ILjava/lang/String;)Z

    move-result v6

    .line 72
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeAllEnrolledFingers(Ljava/lang/String;)Z

    move-result v6

    .line 82
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v6, :cond_1

    move v0, v7

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->hasPendingCommand()Z

    move-result v6

    .line 90
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyEnrollBegin()Z

    move-result v6

    .line 98
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v6, :cond_3

    move v0, v7

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v6    # "_result":Z
    :sswitch_7
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyEnrollEnd()Z

    move-result v6

    .line 106
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v6, :cond_4

    move v0, v7

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->pauseEnroll()Z

    move-result v6

    .line 114
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v6, :cond_5

    move v0, v7

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->resumeEnroll()Z

    move-result v6

    .line 122
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v6, :cond_6

    move v0, v7

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v6    # "_result":Z
    :sswitch_a
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getSensorInfo()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getDaemonVersion()Ljava/lang/String;

    move-result-object v6

    .line 138
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getUserIdList()[Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->verifySensorState(IIIII)I

    move-result v6

    .line 164
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :sswitch_e
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->request(II)I

    move-result v6

    .line 176
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_f
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyAlternativePasswordBegin()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    :sswitch_10
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 193
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 197
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_7

    move v0, v7

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_11
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 209
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v6, :cond_8

    move v0, v7

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_12
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 220
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 225
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyApplicationState(ILandroid/os/Bundle;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 231
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_13
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 235
    .local v1, "_arg0":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 236
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 241
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v6

    .line 242
    .local v6, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 239
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v6    # "_result":Landroid/os/IBinder;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .line 248
    .end local v1    # "_arg0":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_14
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 251
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v6

    .line 252
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v6, :cond_b

    move v0, v7

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_result":Z
    :sswitch_15
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 261
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->cancel(Landroid/os/IBinder;)I

    move-result v6

    .line 262
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_result":I
    :sswitch_16
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 272
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v6

    .line 276
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_17
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 286
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I

    move-result v6

    .line 292
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v6    # "_result":I
    :sswitch_18
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 302
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v6

    .line 304
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 310
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_19
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 314
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v6

    .line 318
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_1a
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    .line 329
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 335
    .local v2, "_arg1":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v4, v7

    .line 338
    .local v4, "_arg3":Z
    :goto_4
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->showIdentifyDialog(Landroid/os/IBinder;Landroid/content/ComponentName;Ljava/lang/String;Z)I

    move-result v6

    .line 339
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 332
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v6    # "_result":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3

    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_d
    move v4, v0

    .line 337
    goto :goto_4

    .line 345
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 350
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 356
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v3

    .line 358
    .local v3, "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 359
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 364
    .local v4, "_arg3":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identifyWithDialog(Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v6

    .line 365
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 353
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":I
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_5

    .line 362
    .restart local v3    # "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_6

    .line 371
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_1c
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 374
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->openTransaction(Landroid/os/IBinder;)Z

    move-result v6

    .line 375
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v6, :cond_10

    move v0, v7

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 381
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_result":Z
    :sswitch_1d
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 384
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->closeTransaction(Landroid/os/IBinder;)Z

    move-result v6

    .line 385
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v6, :cond_11

    move v0, v7

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 391
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_result":Z
    :sswitch_1e
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isSensorReady()Z

    move-result v6

    .line 393
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v6, :cond_12

    move v0, v7

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v6    # "_result":Z
    :sswitch_1f
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 403
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 408
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v6

    .line 409
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 415
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":[B
    :sswitch_20
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 419
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 422
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->process(Landroid/os/IBinder;Ljava/lang/String;[B)[B

    move-result-object v6

    .line 423
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 429
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v6    # "_result":[B
    :sswitch_21
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getIndexName(I)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 444
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->setIndexName(ILjava/lang/String;)Z

    move-result v6

    .line 445
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v6, :cond_13

    move v0, v7

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 451
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_23
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getLastImageQuality(Ljava/lang/String;)I

    move-result v6

    .line 465
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 471
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_25
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isVZWPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    .line 475
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v6, :cond_14

    move v0, v7

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 481
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_26
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isEnrollSession()Z

    move-result v6

    .line 483
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v6, :cond_15

    move v0, v7

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 489
    .end local v6    # "_result":Z
    :sswitch_27
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 494
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getFingerprintIds(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_28
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getFingerprintIdByFinger(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrollRepeatCount()I

    move-result v6

    .line 517
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 523
    .end local v6    # "_result":I
    :sswitch_2a
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isSupportFingerprintIds()Z

    move-result v6

    .line 525
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v6, :cond_16

    move v0, v7

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
