.class public abstract Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;
.super Landroid/os/Binder;
.source "IIrisDaemonCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisDaemonCallback"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticated:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onIRImageProcessed:I = 0x6

.field static final TRANSACTION_onIRPropertyChanged:I = 0x7

.field static final TRANSACTION_onRemoved:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
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
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 55
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 59
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    move-object v1, p0

    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onEnrollResult(JIII)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_2
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 70
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/samsung/android/camera/iris/EyeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/iris/EyeInfo;

    .line 76
    .local v4, "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v4    # "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    goto :goto_1

    .line 82
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    :sswitch_3
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 86
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 88
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 89
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAuthenticated(JII)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_4
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 99
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onError(JI)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :sswitch_5
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 110
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 113
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onRemoved(JII)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_6
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 123
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 125
    .local v4, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    move-object v1, p0

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onIRImageProcessed(J[BII)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_7
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 138
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onIRPropertyChanged(JLjava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
