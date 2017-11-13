.class public abstract Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.super Landroid/os/Binder;
.source "IEngineeringModeService.java"

# interfaces
.implements Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

.field static final TRANSACTION_getID:I = 0x6

.field static final TRANSACTION_getNumOfModes:I = 0x7

.field static final TRANSACTION_getRequestMsg:I = 0x2

.field static final TRANSACTION_getStatus:I = 0x1

.field static final TRANSACTION_installToken:I = 0x3

.field static final TRANSACTION_isTokenInstalled:I = 0x4

.field static final TRANSACTION_removeToken:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;
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
    const-string v1, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getStatus(I)I

    move-result v4

    .line 55
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 69
    .local v2, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v4

    .line 71
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[B
    :sswitch_3
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 80
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->installToken([B)I

    move-result v4

    .line 81
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":[B
    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->isTokenInstalled()I

    move-result v4

    .line 89
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v4    # "_result":I
    :sswitch_5
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->removeToken()I

    move-result v4

    .line 97
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v4    # "_result":I
    :sswitch_6
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getID()[B

    move-result-object v4

    .line 105
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 111
    .end local v4    # "_result":[B
    :sswitch_7
    const-string v6, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getNumOfModes()I

    move-result v4

    .line 113
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
