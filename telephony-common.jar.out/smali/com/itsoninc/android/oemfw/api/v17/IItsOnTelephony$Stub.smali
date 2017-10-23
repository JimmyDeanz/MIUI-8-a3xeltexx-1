.class public abstract Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;
.super Landroid/os/Binder;
.source "IItsOnTelephony.java"

# interfaces
.implements Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

.field static final TRANSACTION_authorizeIncomingSms:I = 0x5

.field static final TRANSACTION_authorizeIncomingSmsLegacy:I = 0xa

.field static final TRANSACTION_authorizeOutgoingSms:I = 0x6

.field static final TRANSACTION_authorizeOutgoingSmsLegacy:I = 0xb

.field static final TRANSACTION_authorizeVoice:I = 0x1

.field static final TRANSACTION_cleanupVoice:I = 0x4

.field static final TRANSACTION_dequeueSms:I = 0x9

.field static final TRANSACTION_isDataAllowed:I = 0xc

.field static final TRANSACTION_nitzTimeReceived:I = 0x13

.field static final TRANSACTION_onForegroundActivitiesChanged:I = 0x10

.field static final TRANSACTION_onImportanceChanged:I = 0x11

.field static final TRANSACTION_onNewDataSession:I = 0xd

.field static final TRANSACTION_onProcessDied:I = 0x12

.field static final TRANSACTION_registerCallBack:I = 0xf

.field static final TRANSACTION_setEmergencyMode:I = 0xe

.field static final TRANSACTION_smsError:I = 0x8

.field static final TRANSACTION_smsSuccess:I = 0x7

.field static final TRANSACTION_startVoiceAccounting:I = 0x2

.field static final TRANSACTION_stopVoiceAccouting:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->startVoiceAccounting(Ljava/lang/String;)Z

    move-result v8

    .line 67
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v8, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v10

    goto :goto_1

    .line 73
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_3
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->stopVoiceAccouting(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->cleanupVoice(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    .line 99
    .local v1, "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->authorizeIncomingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;)Z

    move-result v8

    .line 100
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v8, :cond_1

    move v10, v9

    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    .end local v8    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    goto :goto_2

    .line 106
    .end local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :sswitch_6
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    sget-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    .line 115
    .restart local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->authorizeOutgoingSms(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;I)Z

    move-result v8

    .line 117
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v8, :cond_3

    move v10, v9

    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    goto :goto_3

    .line 123
    .end local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :sswitch_7
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->smsSuccess(III)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_8
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->smsError(III)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_9
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    move-result-object v8

    .line 151
    .local v8, "_result":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v8, :cond_5

    .line 153
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v8, p3, v9}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 157
    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v8    # "_result":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    :sswitch_a
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->authorizeIncomingSmsLegacy(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    .line 171
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v8, :cond_6

    move v10, v9

    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_b
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->authorizeOutgoingSmsLegacy(Ljava/lang/String;I)Z

    move-result v8

    .line 183
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v8, :cond_7

    move v10, v9

    :cond_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_c
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 199
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 200
    invoke-virtual/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->isDataAllowed(IILjava/lang/String;II)Z

    move-result v8

    .line 201
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v8, :cond_8

    move v10, v9

    :cond_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":Z
    :sswitch_d
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 217
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_e
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v9

    .line 228
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->setEmergencyMode(ZII)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :cond_9
    move v1, v10

    .line 226
    goto :goto_4

    .line 237
    :sswitch_f
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;

    move-result-object v1

    .line 240
    .local v1, "_arg0":Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;
    invoke-virtual {p0, v1}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->registerCallBack(Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 246
    .end local v1    # "_arg0":Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;
    :sswitch_10
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v3, v9

    .line 253
    .local v3, "_arg2":Z
    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->onForegroundActivitiesChanged(IIZ)V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    :cond_a
    move v3, v10

    .line 252
    goto :goto_5

    .line 258
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_11
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->onImportanceChanged(III)V

    goto/16 :goto_0

    .line 270
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_12
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->onProcessDied(II)V

    goto/16 :goto_0

    .line 280
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v0, "com.itsoninc.android.oemfw.api.v17.IItsOnTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 285
    .local v6, "_arg1":J
    invoke-virtual {p0, v1, v6, v7}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->nitzTimeReceived(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 38
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
