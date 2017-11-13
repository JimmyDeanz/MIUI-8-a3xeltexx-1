.class public abstract Lcom/samsung/cpp/ICPPositioningService$Stub;
.super Landroid/os/Binder;
.source "ICPPositioningService.java"

# interfaces
.implements Lcom/samsung/cpp/ICPPositioningService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/ICPPositioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/ICPPositioningService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.cpp.ICPPositioningService"

.field static final TRANSACTION_deRegisterCPGeoFence:I = 0x8

.field static final TRANSACTION_deRegisterGeoFence:I = 0x6

.field static final TRANSACTION_registerCPGeoFence:I = 0x7

.field static final TRANSACTION_registerGeoFence:I = 0x5

.field static final TRANSACTION_requestCPLocationUpdates:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_stopCPLocationUpdates:I = 0x4

.field static final TRANSACTION_stopLocationUpdates:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/cpp/ICPPositioningService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPositioningService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/cpp/ICPPositioningService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/cpp/ICPPositioningService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/cpp/ICPPositioningService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/cpp/ICPPositioningService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v9

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v6

    .local v6, "_arg2":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/samsung/cpp/ICPPositioningService$Stub;->requestLocationUpdates(IILcom/samsung/cpp/ICPPLocationListener;Ljava/lang/String;)I

    move-result v0

    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    goto :goto_0

    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Lcom/samsung/cpp/ICPPLocationListener;
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v2

    .local v2, "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->stopLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I

    move-result v0

    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    goto :goto_0

    .end local v0    # "_result":I
    .end local v2    # "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    :sswitch_3
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v7

    .local v7, "_arg3":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/samsung/cpp/ICPPositioningService$Stub;->requestCPLocationUpdates(IIILcom/samsung/cpp/ICPPLocationListener;)I

    move-result v0

    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    goto :goto_0

    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Lcom/samsung/cpp/ICPPLocationListener;
    :sswitch_4
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v2

    .local v2, "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->stopCPLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I

    move-result v0

    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    goto/16 :goto_0

    .end local v0    # "_result":I
    .end local v2    # "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    :sswitch_5
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .local v4, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/IGeoFenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/IGeoFenceListener;

    move-result-object v8

    .local v8, "_arg4":Lcom/samsung/cpp/IGeoFenceListener;
    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/cpp/ICPPositioningService$Stub;->registerGeoFence(DDIILcom/samsung/cpp/IGeoFenceListener;)I

    move-result v0

    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    goto/16 :goto_0

    .end local v0    # "_result":I
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":D
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Lcom/samsung/cpp/IGeoFenceListener;
    :sswitch_6
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/IGeoFenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/IGeoFenceListener;

    move-result-object v2

    .local v2, "_arg0":Lcom/samsung/cpp/IGeoFenceListener;
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->deRegisterGeoFence(Lcom/samsung/cpp/IGeoFenceListener;)I

    move-result v0

    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    goto/16 :goto_0

    .end local v0    # "_result":I
    .end local v2    # "_arg0":Lcom/samsung/cpp/IGeoFenceListener;
    :sswitch_7
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .restart local v4    # "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/cpp/ICPPositioningService$Stub;->registerCPGeoFence(DDIII)I

    move-result v0

    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    goto/16 :goto_0

    .end local v0    # "_result":I
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":D
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :sswitch_8
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->deRegisterCPGeoFence(I)I

    move-result v0

    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
