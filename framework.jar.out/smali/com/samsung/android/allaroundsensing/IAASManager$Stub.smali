.class public abstract Lcom/samsung/android/allaroundsensing/IAASManager$Stub;
.super Landroid/os/Binder;
.source "IAASManager.java"

# interfaces
.implements Lcom/samsung/android/allaroundsensing/IAASManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allaroundsensing/IAASManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allaroundsensing/IAASManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.allaroundsensing.IAASManager"

.field static final TRANSACTION_getBrightnessValue:I = 0x1

.field static final TRANSACTION_getBrightnessValueEnable:I = 0x2

.field static final TRANSACTION_setBrightnessValue:I = 0x3

.field static final TRANSACTION_setBrightnessValueEnable:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.allaroundsensing.IAASManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/allaroundsensing/IAASManager;
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
    const-string v1, "com.samsung.android.allaroundsensing.IAASManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/allaroundsensing/IAASManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/allaroundsensing/IAASManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/allaroundsensing/IAASManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v2, "com.samsung.android.allaroundsensing.IAASManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "com.samsung.android.allaroundsensing.IAASManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;->getBrightnessValue()F

    move-result v1

    .line 50
    .local v1, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 56
    .end local v1    # "_result":F
    :sswitch_2
    const-string v4, "com.samsung.android.allaroundsensing.IAASManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;->getBrightnessValueEnable()Z

    move-result v1

    .line 58
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v2, "com.samsung.android.allaroundsensing.IAASManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 67
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;->setBrightnessValue(F)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":F
    :sswitch_4
    const-string v4, "com.samsung.android.allaroundsensing.IAASManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 76
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;->setBrightnessValueEnable(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v2

    .line 75
    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
