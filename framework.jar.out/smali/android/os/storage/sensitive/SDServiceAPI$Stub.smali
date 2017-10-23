.class public abstract Landroid/os/storage/sensitive/SDServiceAPI$Stub;
.super Landroid/os/Binder;
.source "SDServiceAPI.java"

# interfaces
.implements Landroid/os/storage/sensitive/SDServiceAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/sensitive/SDServiceAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/sensitive/SDServiceAPI$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "SDServiceAPI"

.field static final TRANSACTION_processParcel:I = 0x1

.field static final TRANSACTION_setLocked:I = 0x3

.field static final TRANSACTION_setPassword:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "SDServiceAPI"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/sensitive/SDServiceAPI;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "SDServiceAPI"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/sensitive/SDServiceAPI;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Landroid/os/storage/sensitive/SDServiceAPI;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Landroid/os/storage/sensitive/SDServiceAPI$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 57
    :sswitch_0
    const-string v3, "SDServiceAPI"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :sswitch_1
    const-string v3, "SDServiceAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    sget-object v3, Landroid/os/storage/sensitive/SensitiveDataParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/sensitive/SensitiveDataParcel;

    .line 70
    .local v0, "_arg0":Landroid/os/storage/sensitive/SensitiveDataParcel;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;->processParcel(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B

    move-result-object v1

    .line 71
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v0, p3, v2}, Landroid/os/storage/sensitive/SensitiveDataParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Landroid/os/storage/sensitive/SensitiveDataParcel;
    .end local v1    # "_result":[B
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/storage/sensitive/SensitiveDataParcel;
    goto :goto_1

    .line 78
    .restart local v1    # "_result":[B
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":Landroid/os/storage/sensitive/SensitiveDataParcel;
    .end local v1    # "_result":[B
    :sswitch_2
    const-string v3, "SDServiceAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 87
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;->setPassword([B)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":[B
    :sswitch_3
    const-string v3, "SDServiceAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;->setLocked()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
