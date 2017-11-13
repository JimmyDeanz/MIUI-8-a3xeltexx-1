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
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.os.ISecExternalDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISecExternalDisplayService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/ISecExternalDisplayService;

    goto :goto_0

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

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDInit()Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    .end local v6    # "_result":Z
    :sswitch_2
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDDestroy()Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v6    # "_result":Z
    :sswitch_3
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDRefresh()Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDOff()Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v6    # "_result":Z
    :sswitch_5
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDSetframe([BII)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDSetLoop(IIIII)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :sswitch_7
    const-string v0, "android.os.ISecExternalDisplayService"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayLEDSetScroll(IIIII)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGetStatus(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v2, v7

    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetStatus(IZ)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_9
    move v2, v8

    goto :goto_2

    .end local v1    # "_arg0":I
    :sswitch_a
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetResolution(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_b
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetOutputMode(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v7

    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayRegisterEVF(Z)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":I
    :cond_c
    move v1, v8

    goto :goto_3

    :sswitch_d
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v1, v7

    .restart local v1    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetPause(Z)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_e
    move v1, v8

    goto :goto_4

    :sswitch_e
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGet3DMode()I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":I
    :sswitch_f
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySet3DMode(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_10
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_f

    move v8, v7

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Z
    :sswitch_11
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v1, v7

    .local v1, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayType(Z)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_10

    move v8, v7

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_11
    move v1, v8

    goto :goto_5

    :sswitch_12
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_12

    move v8, v7

    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_13
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_13

    move v8, v7

    :cond_13
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
