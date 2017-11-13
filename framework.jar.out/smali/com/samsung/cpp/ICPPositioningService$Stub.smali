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
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/cpp/ICPPositioningService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPositioningService;
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
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/cpp/ICPPositioningService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/cpp/ICPPositioningService;

    goto :goto_0

    .line 33
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
    .line 37
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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v9

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v6

    .line 58
    .local v6, "_arg2":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/samsung/cpp/ICPPositioningService$Stub;->requestLocationUpdates(IILcom/samsung/cpp/ICPPLocationListener;Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 62
    goto :goto_0

    .line 66
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Lcom/samsung/cpp/ICPPLocationListener;
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v2

    .line 69
    .local v2, "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->stopLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I

    move-result v0

    .line 70
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 72
    goto :goto_0

    .line 76
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    :sswitch_3
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 84
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v7

    .line 85
    .local v7, "_arg3":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/samsung/cpp/ICPPositioningService$Stub;->requestCPLocationUpdates(IIILcom/samsung/cpp/ICPPLocationListener;)I

    move-result v0

    .line 86
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 88
    goto :goto_0

    .line 92
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Lcom/samsung/cpp/ICPPLocationListener;
    :sswitch_4
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/ICPPLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v2

    .line 95
    .local v2, "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->stopCPLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)I

    move-result v0

    .line 96
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 98
    goto/16 :goto_0

    .line 102
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Lcom/samsung/cpp/ICPPLocationListener;
    :sswitch_5
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 106
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 108
    .local v4, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .restart local v6    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 112
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/IGeoFenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/IGeoFenceListener;

    move-result-object v8

    .local v8, "_arg4":Lcom/samsung/cpp/IGeoFenceListener;
    move-object v1, p0

    .line 113
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/cpp/ICPPositioningService$Stub;->registerGeoFence(DDIILcom/samsung/cpp/IGeoFenceListener;)I

    move-result v0

    .line 114
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v0    # "_result":I
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":D
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Lcom/samsung/cpp/IGeoFenceListener;
    :sswitch_6
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/cpp/IGeoFenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cpp/IGeoFenceListener;

    move-result-object v2

    .line 123
    .local v2, "_arg0":Lcom/samsung/cpp/IGeoFenceListener;
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->deRegisterGeoFence(Lcom/samsung/cpp/IGeoFenceListener;)I

    move-result v0

    .line 124
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 126
    goto/16 :goto_0

    .line 130
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Lcom/samsung/cpp/IGeoFenceListener;
    :sswitch_7
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 134
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 136
    .restart local v4    # "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 138
    .restart local v6    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 140
    .restart local v7    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    move-object v1, p0

    .line 141
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/cpp/ICPPositioningService$Stub;->registerCPGeoFence(DDIII)I

    move-result v0

    .line 142
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 144
    goto/16 :goto_0

    .line 148
    .end local v0    # "_result":I
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":D
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :sswitch_8
    const-string v1, "com.samsung.cpp.ICPPositioningService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/ICPPositioningService$Stub;->deRegisterCPGeoFence(I)I

    move-result v0

    .line 152
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    .line 154
    goto/16 :goto_0

    .line 41
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
