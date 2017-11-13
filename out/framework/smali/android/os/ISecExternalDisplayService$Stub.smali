.class public abstract Landroid/os/ISecExternalDisplayService$Stub;
.super Landroid/os/Binder;
.source "ISecExternalDisplayService.java"

# interfaces
.implements Landroid/os/ISecExternalDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISecExternalDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ISecExternalDisplayService"

.field static final TRANSACTION_SecExternalDisplayCreateSurface:I = 0x10

.field static final TRANSACTION_SecExternalDisplayDestroySurface:I = 0x13

.field static final TRANSACTION_SecExternalDisplayGet3DMode:I = 0xe

.field static final TRANSACTION_SecExternalDisplayGetStatus:I = 0x8

.field static final TRANSACTION_SecExternalDisplayLEDDestroy:I = 0x2

.field static final TRANSACTION_SecExternalDisplayLEDInit:I = 0x1

.field static final TRANSACTION_SecExternalDisplayLEDOff:I = 0x4

.field static final TRANSACTION_SecExternalDisplayLEDRefresh:I = 0x3

.field static final TRANSACTION_SecExternalDisplayLEDSetLoop:I = 0x6

.field static final TRANSACTION_SecExternalDisplayLEDSetScroll:I = 0x7

.field static final TRANSACTION_SecExternalDisplayLEDSetframe:I = 0x5

.field static final TRANSACTION_SecExternalDisplayRegisterEVF:I = 0xc

.field static final TRANSACTION_SecExternalDisplaySet3DMode:I = 0xf

.field static final TRANSACTION_SecExternalDisplaySetExternalUITransform:I = 0x12

.field static final TRANSACTION_SecExternalDisplaySetOutputMode:I = 0xb

.field static final TRANSACTION_SecExternalDisplaySetPause:I = 0xd

.field static final TRANSACTION_SecExternalDisplaySetResolution:I = 0xa

.field static final TRANSACTION_SecExternalDisplaySetStatus:I = 0x9

.field static final TRANSACTION_SecExternalDisplayType:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;
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
    const-string v1, "android.os.ISecExternalDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISecExternalDisplayService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ISecExternalDisplayService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/ISecExternalDisplayService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ISecExternalDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDInit()Z

    move-result v6

    .line 50
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    .line 56
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDDestroy()Z

    move-result v6

    .line 58
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v6    # "_result":Z
    :sswitch_3
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDRefresh()Z

    move-result v6

    .line 66
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDOff()Z

    move-result v6

    .line 74
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 84
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDSetframe([BII)Z

    move-result v6

    .line 88
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDSetLoop(IIIII)Z

    move-result v6

    .line 106
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v6, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :sswitch_7
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDSetScroll(IIIII)Z

    move-result v6

    .line 124
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v6, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGetStatus(I)Z

    move-result v6

    .line 134
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v2, v7

    .line 145
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetStatus(IZ)Z

    move-result v6

    .line 146
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_9
    move v2, v8

    .line 144
    goto :goto_2

    .line 152
    .end local v1    # "_arg0":I
    :sswitch_a
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetResolution(I)Z

    move-result v6

    .line 156
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_b
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetOutputMode(I)Z

    move-result v6

    .line 166
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v6, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v7

    .line 175
    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayRegisterEVF(Z)I

    move-result v6

    .line 176
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":I
    :cond_c
    move v1, v8

    .line 174
    goto :goto_3

    .line 182
    :sswitch_d
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v1, v7

    .line 185
    .restart local v1    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetPause(Z)Z

    move-result v6

    .line 186
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v6, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_e
    move v1, v8

    .line 184
    goto :goto_4

    .line 192
    :sswitch_e
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGet3DMode()I

    move-result v6

    .line 194
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v6    # "_result":I
    :sswitch_f
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySet3DMode(I)I

    move-result v6

    .line 204
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_10
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 217
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v6

    .line 218
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v6, :cond_f

    move v8, v7

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Z
    :sswitch_11
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v1, v7

    .line 227
    .local v1, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayType(Z)Z

    move-result v6

    .line 228
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v6, :cond_10

    move v8, v7

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_11
    move v1, v8

    .line 226
    goto :goto_5

    .line 234
    :sswitch_12
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v6

    .line 238
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v6, :cond_12

    move v8, v7

    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_13
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 251
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v6

    .line 252
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v6, :cond_13

    move v8, v7

    :cond_13
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
