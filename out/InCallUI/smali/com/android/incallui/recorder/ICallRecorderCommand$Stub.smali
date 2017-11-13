.class public abstract Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;
.super Landroid/os/Binder;
.source "ICallRecorderCommand.java"

# interfaces
.implements Lcom/android/incallui/recorder/ICallRecorderCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/recorder/ICallRecorderCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/recorder/ICallRecorderCommand$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p0, p0, v0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/incallui/recorder/ICallRecorderCommand;
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
    const-string v1, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/recorder/ICallRecorderCommand;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/incallui/recorder/ICallRecorderCommand;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v3, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->startCallRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->stopCallRecord()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_3
    const-string v3, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->checkCallRecordTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 74
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_4
    const-string v3, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/recorder/IRecorderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/incallui/recorder/IRecorderCallback;

    move-result-object v0

    .line 83
    .local v0, "_arg0":Lcom/android/incallui/recorder/IRecorderCallback;
    invoke-virtual {p0, v0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->registerCallback(Lcom/android/incallui/recorder/IRecorderCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Lcom/android/incallui/recorder/IRecorderCallback;
    :sswitch_5
    const-string v3, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/recorder/IRecorderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/incallui/recorder/IRecorderCallback;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Lcom/android/incallui/recorder/IRecorderCallback;
    invoke-virtual {p0, v0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->unregisterCallback(Lcom/android/incallui/recorder/IRecorderCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Lcom/android/incallui/recorder/IRecorderCallback;
    :sswitch_6
    const-string v3, "com.android.incallui.recorder.ICallRecorderCommand"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->isBound()Z

    move-result v4

    .line 100
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_0

    move v3, v6

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
